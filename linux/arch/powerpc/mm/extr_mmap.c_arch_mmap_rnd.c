
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SHIFT ;
 unsigned long get_random_long () ;
 scalar_t__ is_32bit_task () ;
 unsigned long mmap_rnd_bits ;
 unsigned long mmap_rnd_compat_bits ;

unsigned long arch_mmap_rnd(void)
{
 unsigned long shift, rnd;

 shift = mmap_rnd_bits;




 rnd = get_random_long() % (1ul << shift);

 return rnd << PAGE_SHIFT;
}
