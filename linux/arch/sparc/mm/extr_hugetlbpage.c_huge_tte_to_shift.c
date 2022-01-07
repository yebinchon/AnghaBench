
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 unsigned long PAGE_SHIFT ;
 int WARN_ONCE (int,char*,int ) ;
 scalar_t__ hypervisor ;
 int pte_val (int ) ;
 unsigned long sun4u_huge_tte_to_shift (int ) ;
 unsigned long sun4v_huge_tte_to_shift (int ) ;
 scalar_t__ tlb_type ;

__attribute__((used)) static unsigned int huge_tte_to_shift(pte_t entry)
{
 unsigned long shift;

 if (tlb_type == hypervisor)
  shift = sun4v_huge_tte_to_shift(entry);
 else
  shift = sun4u_huge_tte_to_shift(entry);

 if (shift == PAGE_SHIFT)
  WARN_ONCE(1, "tto_to_shift: invalid hugepage tte=0x%lx\n",
     pte_val(entry));

 return shift;
}
