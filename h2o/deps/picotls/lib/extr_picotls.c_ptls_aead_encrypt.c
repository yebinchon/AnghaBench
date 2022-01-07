
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int ptls_aead_context_t ;


 scalar_t__ ptls_aead_encrypt_final (int *,int *) ;
 int ptls_aead_encrypt_init (int *,int ,void const*,size_t) ;
 scalar_t__ ptls_aead_encrypt_update (int *,int *,void const*,size_t) ;

size_t ptls_aead_encrypt(ptls_aead_context_t *ctx, void *output, const void *input, size_t inlen, uint64_t seq, const void *aad,
                         size_t aadlen)
{
    size_t off = 0;

    ptls_aead_encrypt_init(ctx, seq, aad, aadlen);
    off += ptls_aead_encrypt_update(ctx, ((uint8_t *)output) + off, input, inlen);
    off += ptls_aead_encrypt_final(ctx, ((uint8_t *)output) + off);

    return off;
}
