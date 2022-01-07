
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
typedef unsigned int uint32_t ;


 unsigned int readl (void*) ;

__attribute__((used)) static void readecc(void *eccbase, uint8_t *ecc_code, unsigned ecc_len)
{
 uint32_t i, j, reg;

 for (i = 0; i < ecc_len; i += 4) {
  reg = readl(eccbase + i);
  for (j = 0; (j < 4) && (i + j < ecc_len); ++j) {
   ecc_code[i + j] = reg & 0xFF;
   reg >>= 8;
  }
 }
}
