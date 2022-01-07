
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_OFFSET ;
 scalar_t__ high_memory ;
 int kern_addr_valid (unsigned long) ;

__attribute__((used)) static int cheetah_check_main_memory(unsigned long paddr)
{
 unsigned long vaddr = PAGE_OFFSET + paddr;

 if (vaddr > (unsigned long) high_memory)
  return 0;

 return kern_addr_valid(vaddr);
}
