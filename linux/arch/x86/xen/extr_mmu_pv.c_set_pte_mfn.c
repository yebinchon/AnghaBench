
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 int mfn_pte (unsigned long,int ) ;
 int set_pte_vaddr (unsigned long,int ) ;

void set_pte_mfn(unsigned long vaddr, unsigned long mfn, pgprot_t flags)
{
 set_pte_vaddr(vaddr, mfn_pte(mfn, flags));
}
