
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AES_BLOCK_SIZE ;
 unsigned int PAGE_SIZE ;
 int crypto_inc (int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static unsigned int __ctrblk_init(u8 *ctrptr, u8 *iv, unsigned int nbytes)
{
 unsigned int i, n;


 memcpy(ctrptr, iv, AES_BLOCK_SIZE);
 n = (nbytes > PAGE_SIZE) ? PAGE_SIZE : nbytes & ~(AES_BLOCK_SIZE - 1);
 for (i = (n / AES_BLOCK_SIZE) - 1; i > 0; i--) {
  memcpy(ctrptr + AES_BLOCK_SIZE, ctrptr, AES_BLOCK_SIZE);
  crypto_inc(ctrptr + AES_BLOCK_SIZE, AES_BLOCK_SIZE);
  ctrptr += AES_BLOCK_SIZE;
 }
 return n;
}
