
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static unsigned char inst_parity(uint32_t word)
{
 int i, j;
 char parity = 0;
 for (j=0; j<4; j++) {
  char byte_parity = 0;
  for (i=0; i<8; i++) {
   if (word & 0x80000000)
    byte_parity = !byte_parity;
   word <<= 1;
  }
  parity <<= 1;
  parity |= byte_parity;
 }
 return parity;
}
