
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int xor_hcyf (int a, int b) {
  if (a >= 'A') { a -= 7; }
  if (b >= 'B') { b -= 7; }
  a = (a ^ b) & 15;
  return a < 10 ? '0' + a : '0' + 0x27 + a;
}
