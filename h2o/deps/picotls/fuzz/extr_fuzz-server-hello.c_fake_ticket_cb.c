
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_t ;
typedef int ptls_save_ticket_t ;
typedef int ptls_iovec_t ;



__attribute__((used)) static int fake_ticket_cb(ptls_save_ticket_t *_self, ptls_t *tls,
                          ptls_iovec_t src) {
  return 0;
}
