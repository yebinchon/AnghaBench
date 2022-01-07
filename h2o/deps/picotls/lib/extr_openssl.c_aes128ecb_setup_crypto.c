
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_cipher_context_t ;


 int EVP_aes_128_ecb () ;
 int cipher_decrypt ;
 int cipher_encrypt ;
 int cipher_setup_crypto (int *,int,void const*,int ,int ) ;

__attribute__((used)) static int aes128ecb_setup_crypto(ptls_cipher_context_t *ctx, int is_enc, const void *key)
{
    return cipher_setup_crypto(ctx, is_enc, key, EVP_aes_128_ecb(), is_enc ? cipher_encrypt : cipher_decrypt);
}
