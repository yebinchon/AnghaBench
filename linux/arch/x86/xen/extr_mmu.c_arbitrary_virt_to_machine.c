
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmaddr_t ;
typedef int pte_t ;
typedef unsigned int phys_addr_t ;


 int BUG_ON (int ) ;
 unsigned long PAGE_MASK ;
 unsigned int PAGE_SHIFT ;
 int XMADDR (unsigned int) ;
 int * lookup_address (unsigned long,unsigned int*) ;
 scalar_t__ pte_mfn (int ) ;
 scalar_t__ virt_addr_valid (void*) ;
 int virt_to_machine (void*) ;

xmaddr_t arbitrary_virt_to_machine(void *vaddr)
{
 unsigned long address = (unsigned long)vaddr;
 unsigned int level;
 pte_t *pte;
 unsigned offset;





 if (virt_addr_valid(vaddr))
  return virt_to_machine(vaddr);



 pte = lookup_address(address, &level);
 BUG_ON(pte == ((void*)0));
 offset = address & ~PAGE_MASK;
 return XMADDR(((phys_addr_t)pte_mfn(*pte) << PAGE_SHIFT) + offset);
}
