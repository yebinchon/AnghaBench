
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cf_aes_context ;


 int aead_aad ;
 int aead_cipher ;
 int aead_key ;
 int aead_msg ;
 int aead_nonce ;
 int aead_tag ;
 int bracket ;
 int cf_aes ;
 int cf_aes_init (int *,int ,int) ;
 int cf_gcm_encrypt (int *,int *,int ,int ,int ,int,int ,int,int ,int ,int) ;

__attribute__((used)) static void aeadperf_aes128gcm(void)
{
  cf_aes_context ctx;
  cf_aes_init(&ctx, aead_key, 16);

  cf_gcm_encrypt(&cf_aes, &ctx,
                 aead_msg, bracket,
                 aead_aad, sizeof aead_aad,
                 aead_nonce, 12,
                 aead_cipher,
                 aead_tag, 16);
}
