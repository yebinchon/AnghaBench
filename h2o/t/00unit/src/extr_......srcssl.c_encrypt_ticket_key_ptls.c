
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_t ;
typedef int ptls_iovec_t ;
typedef int ptls_encrypt_ticket_t ;
typedef int ptls_buffer_t ;


 int ptls_openssl_decrypt_ticket (int *,int ,int ) ;
 int ptls_openssl_encrypt_ticket (int *,int ,int ) ;
 int stub1 (int *,int ,int ) ;
 int ticket_key_callback ;

__attribute__((used)) static int encrypt_ticket_key_ptls(ptls_encrypt_ticket_t *self, ptls_t *tls, int is_encrypt, ptls_buffer_t *dst, ptls_iovec_t src)
{
    return (is_encrypt ? ptls_openssl_encrypt_ticket : ptls_openssl_decrypt_ticket)(dst, src, ticket_key_callback);
}
