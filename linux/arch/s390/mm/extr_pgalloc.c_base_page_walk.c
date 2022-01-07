
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long _PAGE_INDEX ;
 unsigned long _PAGE_SHIFT ;
 unsigned long base_lra (unsigned long) ;
 unsigned long base_page_addr_end (unsigned long,unsigned long) ;

__attribute__((used)) static int base_page_walk(unsigned long origin, unsigned long addr,
     unsigned long end, int alloc)
{
 unsigned long *pte, next;

 if (!alloc)
  return 0;
 pte = (unsigned long *) origin;
 pte += (addr & _PAGE_INDEX) >> _PAGE_SHIFT;
 do {
  next = base_page_addr_end(addr, end);
  *pte = base_lra(addr);
 } while (pte++, addr = next, addr < end);
 return 0;
}
