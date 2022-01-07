
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_aes_context ;


 int cf_aes ;
 int cf_aes_init (int *,int *,int) ;
 int cf_eax_encrypt (int *,int *,int *,int,int *,int,int *,int,int *,int *,int) ;

__attribute__((used)) static void aes128eax_test(void)
{
  uint8_t key[16] = { 0 };
  cf_aes_context ctx;
  cf_aes_init(&ctx, key, sizeof key);

  uint8_t msg[16] = { 0 };
  uint8_t aad[16] = { 0 };
  uint8_t nonce[12] = { 0 };
  uint8_t cipher[16] = { 0 };
  uint8_t tag[16] = { 0 };

  cf_eax_encrypt(&cf_aes, &ctx,
                 msg, sizeof msg,
                 aad, sizeof aad,
                 nonce, sizeof nonce,
                 cipher,
                 tag, sizeof tag);
}
