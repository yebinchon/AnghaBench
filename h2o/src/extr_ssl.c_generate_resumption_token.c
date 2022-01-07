
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int quicly_generate_resumption_token_t ;
typedef int quicly_conn_t ;
typedef int quicly_address_token_plaintext_t ;
struct TYPE_5__ {scalar_t__ off; int * base; } ;
typedef TYPE_1__ ptls_buffer_t ;
typedef int ptls_aead_context_t ;


 int ptls_buffer_reserve (TYPE_1__*,int) ;
 int ptls_openssl_random_bytes ;
 int * quic_get_address_token_encryptor (int *) ;
 int quicly_encrypt_address_token (int ,int *,TYPE_1__*,scalar_t__,int *) ;

__attribute__((used)) static int generate_resumption_token(quicly_generate_resumption_token_t *self, quicly_conn_t *conn, ptls_buffer_t *buf,
                                     quicly_address_token_plaintext_t *token)
{
    uint8_t prefix;
    ptls_aead_context_t *aead = quic_get_address_token_encryptor(&prefix);
    int ret;

    if ((ret = ptls_buffer_reserve(buf, 1)) != 0)
        return ret;
    buf->base[buf->off++] = prefix;
    return quicly_encrypt_address_token(ptls_openssl_random_bytes, aead, buf, buf->off - 1, token);
}
