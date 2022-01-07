
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int quicly_generate_resumption_token_t ;
typedef int quicly_conn_t ;
typedef int quicly_address_token_plaintext_t ;
struct TYPE_6__ {int off; } ;
typedef TYPE_1__ ptls_buffer_t ;
struct TYPE_8__ {int enc; } ;
struct TYPE_7__ {int random_bytes; } ;


 TYPE_5__ address_token_aead ;
 int quicly_encrypt_address_token (int ,int ,TYPE_1__*,int ,int *) ;
 TYPE_2__ tlsctx ;

__attribute__((used)) static int on_generate_resumption_token(quicly_generate_resumption_token_t *self, quicly_conn_t *conn, ptls_buffer_t *buf,
                                        quicly_address_token_plaintext_t *token)
{
    return quicly_encrypt_address_token(tlsctx.random_bytes, address_token_aead.enc, buf, buf->off, token);
}
