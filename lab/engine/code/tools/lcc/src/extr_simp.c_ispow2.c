
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int ispow2(unsigned long u) {
 int n;

 if (u > 1 && (u&(u-1)) == 0)
  for (n = 0; u; u >>= 1, n++)
   if (u&1)
    return n;
 return 0;
}
