
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_aead_context_t ;


 int EVP_aes_256_gcm () ;
 int aead_setup_crypto (int *,int,void const*,int ) ;

__attribute__((used)) static int aead_aes256gcm_setup_crypto(ptls_aead_context_t *ctx, int is_enc, const void *key)
{
    return aead_setup_crypto(ctx, is_enc, key, EVP_aes_256_gcm());
}
