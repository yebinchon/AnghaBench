
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aesecb_context_t {int aes; } ;
typedef int ptls_cipher_context_t ;


 size_t AES_BLOCKSZ ;
 int assert (int) ;
 int cf_aes_decrypt (int *,void const*,void*) ;

__attribute__((used)) static inline void aesecb_decrypt(ptls_cipher_context_t *_ctx, void *output, const void *input, size_t len)
{
    struct aesecb_context_t *ctx = (struct aesecb_context_t *)_ctx;
    assert(len % AES_BLOCKSZ == 0);
    cf_aes_decrypt(&ctx->aes, input, output);
}
