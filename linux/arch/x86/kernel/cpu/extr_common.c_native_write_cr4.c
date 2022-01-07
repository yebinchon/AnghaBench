
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ONCE (unsigned long,char*,unsigned long) ;
 unsigned long cr4_pinned_bits ;
 int cr_pinning ;
 scalar_t__ static_branch_likely (int *) ;
 scalar_t__ unlikely (int) ;

void native_write_cr4(unsigned long val)
{
 unsigned long bits_missing = 0;

set_register:
 asm volatile("mov %0,%%cr4": "+r" (val), "+m" (cr4_pinned_bits));

 if (static_branch_likely(&cr_pinning)) {
  if (unlikely((val & cr4_pinned_bits) != cr4_pinned_bits)) {
   bits_missing = ~val & cr4_pinned_bits;
   val |= bits_missing;
   goto set_register;
  }

  WARN_ONCE(bits_missing, "CR4 bits went missing: %lx!?\n",
     bits_missing);
 }
}
