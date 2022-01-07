
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static char range_parity(uint64_t dword, int max, int min)
{
 char parity = 0;
 int i;
 dword >>= min;
 for (i=max-min; i>=0; i--) {
  if (dword & 0x1)
   parity = !parity;
  dword >>= 1;
 }
 return parity;
}
