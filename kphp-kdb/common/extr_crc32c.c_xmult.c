
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned xmult (unsigned a) {
  unsigned r = a << 1;
  if (a & (1U<<31)) {
    r ^= 0x1EDC6F41U;
  }
  return r;
}
