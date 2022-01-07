
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multicall_space {int mc; } ;


 int MULTI_update_va_mapping (int ,unsigned long,int ,unsigned int) ;
 int PAGE_KERNEL ;
 scalar_t__ PAGE_SIZE ;
 unsigned int UVMF_ALL ;
 unsigned int UVMF_INVLPG ;
 unsigned int UVMF_TLB_FLUSH ;
 struct multicall_space __xen_mc_entry (int ) ;
 int mfn_pte (unsigned long,int ) ;
 int set_phys_to_machine (int ,unsigned long) ;
 int virt_to_pfn (unsigned long) ;
 int xen_mc_batch () ;
 int xen_mc_issue (int ) ;

__attribute__((used)) static void xen_remap_exchanged_ptes(unsigned long vaddr, int order,
         unsigned long *mfns,
         unsigned long first_mfn)
{
 unsigned i, limit;
 unsigned long mfn;

 xen_mc_batch();

 limit = 1u << order;
 for (i = 0; i < limit; i++, vaddr += PAGE_SIZE) {
  struct multicall_space mcs;
  unsigned flags;

  mcs = __xen_mc_entry(0);
  if (mfns)
   mfn = mfns[i];
  else
   mfn = first_mfn + i;

  if (i < (limit - 1))
   flags = 0;
  else {
   if (order == 0)
    flags = UVMF_INVLPG | UVMF_ALL;
   else
    flags = UVMF_TLB_FLUSH | UVMF_ALL;
  }

  MULTI_update_va_mapping(mcs.mc, vaddr,
    mfn_pte(mfn, PAGE_KERNEL), flags);

  set_phys_to_machine(virt_to_pfn(vaddr), mfn);
 }

 xen_mc_issue(0);
}
