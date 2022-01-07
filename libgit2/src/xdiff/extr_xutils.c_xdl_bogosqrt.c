
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
long xdl_bogosqrt(long n) {
 long i;




 for (i = 1; n > 0; n >>= 2)
  i <<= 1;

 return i;
}
