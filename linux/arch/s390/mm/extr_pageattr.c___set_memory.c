
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MACHINE_HAS_NX ;
 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 unsigned long SET_MEMORY_NX ;
 unsigned long SET_MEMORY_X ;
 int change_page_attr (unsigned long,unsigned long,unsigned long) ;

int __set_memory(unsigned long addr, int numpages, unsigned long flags)
{
 if (!MACHINE_HAS_NX)
  flags &= ~(SET_MEMORY_NX | SET_MEMORY_X);
 if (!flags)
  return 0;
 addr &= PAGE_MASK;
 return change_page_attr(addr, addr + numpages * PAGE_SIZE, flags);
}
