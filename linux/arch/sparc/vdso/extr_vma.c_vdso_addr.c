
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PAGE_SHIFT ;
 int PTRS_PER_PTE ;
 int get_random_int () ;

__attribute__((used)) static unsigned long vdso_addr(unsigned long start, unsigned int len)
{
 unsigned int offset;


 offset = get_random_int() & (PTRS_PER_PTE - 1);
 return start + (offset << PAGE_SHIFT);
}
