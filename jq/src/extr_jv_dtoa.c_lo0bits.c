
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtoa_context {int dummy; } ;
typedef int ULong ;



__attribute__((used)) static int
lo0bits
 (struct dtoa_context* C, ULong *y)
{
 int k;
 ULong x = *y;

 if (x & 7) {
  if (x & 1)
   return 0;
  if (x & 2) {
   *y = x >> 1;
   return 1;
   }
  *y = x >> 2;
  return 2;
  }
 k = 0;
 if (!(x & 0xffff)) {
  k = 16;
  x >>= 16;
  }
 if (!(x & 0xff)) {
  k += 8;
  x >>= 8;
  }
 if (!(x & 0xf)) {
  k += 4;
  x >>= 4;
  }
 if (!(x & 0x3)) {
  k += 2;
  x >>= 2;
  }
 if (!(x & 1)) {
  k++;
  x >>= 1;
  if (!x)
   return 32;
  }
 *y = x;
 return k;
 }
