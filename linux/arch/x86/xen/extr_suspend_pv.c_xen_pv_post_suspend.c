
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* mfn; } ;
struct TYPE_5__ {TYPE_1__ domU; } ;
struct TYPE_6__ {TYPE_2__ console; void* store_mfn; int shared_info; } ;


 int BUG_ON (int ) ;
 int FIX_PARAVIRT_BOOTMAP ;
 void* HYPERVISOR_shared_info ;
 int cpu_online_mask ;
 int cpumask_copy (int *,int ) ;
 scalar_t__ fix_to_virt (int ) ;
 void* pfn_to_mfn (void*) ;
 int set_fixmap (int ,int ) ;
 int xen_build_mfn_list_list () ;
 int * xen_cpu_initialized_map ;
 int xen_mm_unpin_all () ;
 int xen_setup_mfn_list_list () ;
 TYPE_3__* xen_start_info ;
 int xen_vcpu_restore () ;

void xen_pv_post_suspend(int suspend_cancelled)
{
 xen_build_mfn_list_list();
 set_fixmap(FIX_PARAVIRT_BOOTMAP, xen_start_info->shared_info);
 HYPERVISOR_shared_info = (void *)fix_to_virt(FIX_PARAVIRT_BOOTMAP);
 xen_setup_mfn_list_list();

 if (suspend_cancelled) {
  xen_start_info->store_mfn =
   pfn_to_mfn(xen_start_info->store_mfn);
  xen_start_info->console.domU.mfn =
   pfn_to_mfn(xen_start_info->console.domU.mfn);
 } else {




  xen_vcpu_restore();
 }

 xen_mm_unpin_all();
}
