
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_aead_context_t ;


 int PTLS_AES128_KEY_SIZE ;
 int aead_aesgcm_setup_crypto (int *,int,void const*,int ) ;

__attribute__((used)) static int aead_aes128gcm_setup_crypto(ptls_aead_context_t *ctx, int is_enc, const void *key)
{
    return aead_aesgcm_setup_crypto(ctx, is_enc, key, PTLS_AES128_KEY_SIZE);
}
