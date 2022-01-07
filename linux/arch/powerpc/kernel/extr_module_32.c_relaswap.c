
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Elf32_Rela ;



__attribute__((used)) static void relaswap(void *_x, void *_y, int size)
{
 uint32_t *x, *y, tmp;
 int i;

 y = (uint32_t *)_x;
 x = (uint32_t *)_y;

 for (i = 0; i < sizeof(Elf32_Rela) / sizeof(uint32_t); i++) {
  tmp = x[i];
  x[i] = y[i];
  y[i] = tmp;
 }
}
