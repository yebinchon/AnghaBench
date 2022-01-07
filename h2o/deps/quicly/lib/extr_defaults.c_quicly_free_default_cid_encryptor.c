
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_quicly_default_encrypt_cid_t {int reset_token_ctx; int cid_decrypt_ctx; int cid_encrypt_ctx; } ;
typedef int quicly_cid_encryptor_t ;


 int free (struct st_quicly_default_encrypt_cid_t*) ;
 int ptls_cipher_free (int ) ;

void quicly_free_default_cid_encryptor(quicly_cid_encryptor_t *_self)
{
    struct st_quicly_default_encrypt_cid_t *self = (void *)_self;

    ptls_cipher_free(self->cid_encrypt_ctx);
    ptls_cipher_free(self->cid_decrypt_ctx);
    ptls_cipher_free(self->reset_token_ctx);
    free(self);
}
