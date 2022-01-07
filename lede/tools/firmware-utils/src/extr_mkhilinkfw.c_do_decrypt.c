
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int DES_cblock ;


 int DES_DECRYPT ;
 int DES_ecb_encrypt (int *,int *,int *,int ) ;
 int schedule ;

__attribute__((used)) static void do_decrypt(void *p, off_t len)
{
 DES_cblock *pblock;
 int num_blocks;

 num_blocks = (len - 3) / 8;
 pblock = (DES_cblock *) (p + 3);
 while (num_blocks--) {
  DES_ecb_encrypt(pblock, pblock, &schedule, DES_DECRYPT);
  pblock++;
 }

 num_blocks = len / 8;
 pblock = (DES_cblock *) p;
 while (num_blocks--) {
  DES_ecb_encrypt(pblock, pblock, &schedule, DES_DECRYPT);
  pblock++;
 }
}
