
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int BUG () ;
 scalar_t__ HYPERVISOR_update_va_mapping (unsigned long,int ,int ) ;
 int * lookup_address (unsigned long,unsigned int*) ;
 int pte_wrprotect (int ) ;

void make_lowmem_page_readonly(void *vaddr)
{
 pte_t *pte, ptev;
 unsigned long address = (unsigned long)vaddr;
 unsigned int level;

 pte = lookup_address(address, &level);
 if (pte == ((void*)0))
  return;

 ptev = pte_wrprotect(*pte);

 if (HYPERVISOR_update_va_mapping(address, ptev, 0))
  BUG();
}
