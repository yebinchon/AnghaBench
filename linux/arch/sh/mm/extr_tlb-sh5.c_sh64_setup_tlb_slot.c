
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long PAGE_MASK ;
 unsigned long PTEH_ASID_SHIFT ;
 unsigned long PTEH_VALID ;
 unsigned long long _PAGE_CACHABLE ;
 unsigned long long _PAGE_READ ;
 unsigned long long _PAGE_WRITE ;
 unsigned long long neff_sign_extend (unsigned long) ;

void sh64_setup_tlb_slot(unsigned long long config_addr, unsigned long eaddr,
    unsigned long asid, unsigned long paddr)
{
 unsigned long long pteh, ptel;

 pteh = neff_sign_extend(eaddr);
 pteh &= PAGE_MASK;
 pteh |= (asid << PTEH_ASID_SHIFT) | PTEH_VALID;
 ptel = neff_sign_extend(paddr);
 ptel &= PAGE_MASK;
 ptel |= (_PAGE_CACHABLE | _PAGE_READ | _PAGE_WRITE);

 asm volatile("putcfg %0, 1, %1\n\t"
   "putcfg %0, 0, %2\n"
   : : "r" (config_addr), "r" (ptel), "r" (pteh));
}
