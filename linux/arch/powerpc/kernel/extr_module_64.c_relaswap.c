
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int Elf64_Rela ;



__attribute__((used)) static void relaswap(void *_x, void *_y, int size)
{
 uint64_t *x, *y, tmp;
 int i;

 y = (uint64_t *)_x;
 x = (uint64_t *)_y;

 for (i = 0; i < sizeof(Elf64_Rela) / sizeof(uint64_t); i++) {
  tmp = x[i];
  x[i] = y[i];
  y[i] = tmp;
 }
}
