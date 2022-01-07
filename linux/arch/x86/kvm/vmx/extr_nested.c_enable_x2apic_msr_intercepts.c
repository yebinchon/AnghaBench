
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;

__attribute__((used)) static inline void enable_x2apic_msr_intercepts(unsigned long *msr_bitmap) {
 int msr;

 for (msr = 0x800; msr <= 0x8ff; msr += BITS_PER_LONG) {
  unsigned word = msr / BITS_PER_LONG;

  msr_bitmap[word] = ~0;
  msr_bitmap[word + (0x800 / sizeof(long))] = ~0;
 }
}
