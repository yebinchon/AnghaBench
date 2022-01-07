
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void patch_one_ktsb_phys(unsigned int *start, unsigned int *end, unsigned long pa)
{
 unsigned long high_bits, low_bits;

 high_bits = (pa >> 32) & 0xffffffff;
 low_bits = (pa >> 0) & 0xffffffff;

 while (start < end) {
  unsigned int *ia = (unsigned int *)(unsigned long)*start;

  ia[0] = (ia[0] & ~0x3fffff) | (high_bits >> 10);
  __asm__ __volatile__("flush	%0" : : "r" (ia));

  ia[1] = (ia[1] & ~0x3fffff) | (low_bits >> 10);
  __asm__ __volatile__("flush	%0" : : "r" (ia + 1));

  ia[2] = (ia[2] & ~0x1fff) | (high_bits & 0x3ff);
  __asm__ __volatile__("flush	%0" : : "r" (ia + 2));

  ia[3] = (ia[3] & ~0x1fff) | (low_bits & 0x3ff);
  __asm__ __volatile__("flush	%0" : : "r" (ia + 3));

  start++;
 }
}
