
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MMAP_RND_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long get_random_int () ;

unsigned long arch_mmap_rnd(void)
{
 return (get_random_int() & MMAP_RND_MASK) << PAGE_SHIFT;
}
