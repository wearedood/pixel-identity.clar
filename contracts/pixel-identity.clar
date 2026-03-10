;; Pixel Identity - Stacks Edition
(define-map identity-generated principal bool)

(define-public (reveal-my-identity)
  (begin
    (map-set identity-generated tx-sender true)
    (print "Identity Reveal Triggered!")
    (ok true)
  )
)

(define-read-only (has-generated (user principal))
  (default-to false (map-get? identity-generated user))
)