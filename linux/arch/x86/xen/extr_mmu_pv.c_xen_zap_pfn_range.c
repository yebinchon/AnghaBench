
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multicall_space {int mc; } ;


 int INVALID_P2M_ENTRY ;
 int MULTI_update_va_mapping (int ,unsigned long,int ,int ) ;
 scalar_t__ PAGE_SIZE ;
 int VOID_PTE ;
 int __set_phys_to_machine (unsigned long,int ) ;
 struct multicall_space __xen_mc_entry (int ) ;
 unsigned long virt_to_mfn (unsigned long) ;
 unsigned long virt_to_pfn (unsigned long) ;
 int xen_mc_batch () ;
 int xen_mc_issue (int ) ;

__attribute__((used)) static void xen_zap_pfn_range(unsigned long vaddr, unsigned int order,
    unsigned long *in_frames,
    unsigned long *out_frames)
{
 int i;
 struct multicall_space mcs;

 xen_mc_batch();
 for (i = 0; i < (1UL<<order); i++, vaddr += PAGE_SIZE) {
  mcs = __xen_mc_entry(0);

  if (in_frames)
   in_frames[i] = virt_to_mfn(vaddr);

  MULTI_update_va_mapping(mcs.mc, vaddr, VOID_PTE, 0);
  __set_phys_to_machine(virt_to_pfn(vaddr), INVALID_P2M_ENTRY);

  if (out_frames)
   out_frames[i] = virt_to_pfn(vaddr);
 }
 xen_mc_issue(0);
}
