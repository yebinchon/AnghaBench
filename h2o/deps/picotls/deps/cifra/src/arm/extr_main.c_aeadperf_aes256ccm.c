
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
 int cf_ccm_encrypt (int *,int *,int ,int ,int,int ,int,int ,int,int ,int ,int) ;

__attribute__((used)) static void aeadperf_aes256ccm(void)
{
  cf_aes_context ctx;
  cf_aes_init(&ctx, aead_key, 32);

  cf_ccm_encrypt(&cf_aes, &ctx,
                 aead_msg, bracket,
                 4,
                 aead_aad, sizeof aead_aad,
                 aead_nonce, 11,
                 aead_cipher,
                 aead_tag, 16);
}
