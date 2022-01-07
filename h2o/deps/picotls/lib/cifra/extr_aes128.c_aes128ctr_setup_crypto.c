
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_cipher_context_t ;


 int PTLS_AES128_KEY_SIZE ;
 int aesctr_setup_crypto (int *,int,void const*,int ) ;

__attribute__((used)) static int aes128ctr_setup_crypto(ptls_cipher_context_t *ctx, int is_enc, const void *key)
{
    return aesctr_setup_crypto(ctx, is_enc, key, PTLS_AES128_KEY_SIZE);
}
