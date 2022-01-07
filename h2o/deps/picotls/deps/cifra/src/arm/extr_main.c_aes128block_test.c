
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_aes_context ;


 int cf_aes_encrypt (int *,int *,int *) ;
 int cf_aes_init (int *,int *,int) ;

__attribute__((used)) static void aes128block_test(void)
{
  uint8_t key[16] = { 0 }, block[16] = { 0 };
  cf_aes_context ctx;
  cf_aes_init(&ctx, key, sizeof key);
  cf_aes_encrypt(&ctx, block, block);
}
