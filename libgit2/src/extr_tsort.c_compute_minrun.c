
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t compute_minrun(size_t n)
{
 int r = 0;
 while (n >= 64) {
  r |= n & 1;
  n >>= 1;
 }
 return n + r;
}
