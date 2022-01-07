
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_salsa20_ctx ;


 int cf_salsa20_cipher (int *,int *,int *,int) ;
 int cf_salsa20_init (int *,int *,int,int *) ;

__attribute__((used)) static void salsa20_test(void)
{
  uint8_t key[32] = { 0 };
  uint8_t nonce[8] = { 0 };
  uint8_t msg[64] = { 0 };
  uint8_t cipher[64] = { 0 };

  cf_salsa20_ctx ctx;
  cf_salsa20_init(&ctx, key, sizeof key, nonce);
  cf_salsa20_cipher(&ctx, msg, cipher, sizeof msg);
}
