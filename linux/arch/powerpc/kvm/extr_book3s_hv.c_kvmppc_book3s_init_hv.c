
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct TYPE_7__ {int owner; } ;
struct TYPE_5__ {int xics_phys; } ;
struct TYPE_6__ {TYPE_1__ kvm_hstate; } ;


 int CPU_FTR_ARCH_300 ;
 int ENODEV ;
 unsigned int PVR_POWER9 ;
 int SPRN_PVR ;
 int THIS_MODULE ;
 scalar_t__ cpu_has_feature (int ) ;
 int init_default_hcalls () ;
 int init_vcore_lists () ;
 int kvm_init_subcore_bitmap () ;
 TYPE_3__ kvm_ops_hv ;
 int kvmhv_nested_init () ;
 int kvmhv_on_pseries () ;
 int kvmppc_core_check_processor_compat_hv () ;
 TYPE_3__* kvmppc_hv_ops ;
 int kvmppc_mmu_hv_init () ;
 int kvmppc_radix_init () ;
 scalar_t__ kvmppc_radix_possible () ;
 TYPE_2__* local_paca ;
 unsigned int mfspr (int ) ;
 int no_mixing_hpt_and_radix ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 int of_node_put (struct device_node*) ;
 int pr_err (char*) ;
 int tlbie_capable ;
 int xics_on_xive () ;

__attribute__((used)) static int kvmppc_book3s_init_hv(void)
{
 int r;

 if (!tlbie_capable) {
  pr_err("KVM-HV: Host does not support TLBIE\n");
  return -ENODEV;
 }




 r = kvmppc_core_check_processor_compat_hv();
 if (r < 0)
  return -ENODEV;

 r = kvmhv_nested_init();
 if (r)
  return r;

 r = kvm_init_subcore_bitmap();
 if (r)
  return r;
 kvm_ops_hv.owner = THIS_MODULE;
 kvmppc_hv_ops = &kvm_ops_hv;

 init_default_hcalls();

 init_vcore_lists();

 r = kvmppc_mmu_hv_init();
 if (r)
  return r;

 if (kvmppc_radix_possible())
  r = kvmppc_radix_init();





 if (cpu_has_feature(CPU_FTR_ARCH_300)) {
  unsigned int pvr = mfspr(SPRN_PVR);
  if ((pvr >> 16) == PVR_POWER9 &&
      (((pvr & 0xe000) == 0 && (pvr & 0xfff) < 0x202) ||
       ((pvr & 0xe000) == 0x2000 && (pvr & 0xfff) < 0x101)))
   no_mixing_hpt_and_radix = 1;
 }

 return r;
}
