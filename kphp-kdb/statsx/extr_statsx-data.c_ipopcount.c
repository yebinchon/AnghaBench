
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int ipopcount(unsigned long long b) {
  int n;
  for(n = 0; b != 0; n++, b &= b - 1) {}
  return n;
}
