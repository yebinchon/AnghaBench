
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int bsr (int i) {
  int r, t;
  asm("bsr %1,%0\n\t"
    : "=&q" (r), "=&q" (t)
    : "1" (i)
    : "cc");
  return r;
}
