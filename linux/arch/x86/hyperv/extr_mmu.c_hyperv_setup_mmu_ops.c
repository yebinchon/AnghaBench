
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int hints; } ;
struct TYPE_4__ {int tlb_remove_table; int flush_tlb_others; } ;
struct TYPE_5__ {TYPE_1__ mmu; } ;


 int HV_X64_REMOTE_TLB_FLUSH_RECOMMENDED ;
 int hyperv_flush_tlb_others ;
 TYPE_3__ ms_hyperv ;
 int pr_info (char*) ;
 TYPE_2__ pv_ops ;
 int tlb_remove_table ;

void hyperv_setup_mmu_ops(void)
{
 if (!(ms_hyperv.hints & HV_X64_REMOTE_TLB_FLUSH_RECOMMENDED))
  return;

 pr_info("Using hypercall for remote TLB flush\n");
 pv_ops.mmu.flush_tlb_others = hyperv_flush_tlb_others;
 pv_ops.mmu.tlb_remove_table = tlb_remove_table;
}
