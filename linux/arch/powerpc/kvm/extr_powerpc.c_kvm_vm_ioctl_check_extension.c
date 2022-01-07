
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int emul_smt_mode; int smt_mode; } ;
struct kvm {TYPE_1__ arch; } ;
struct TYPE_6__ {int cpu_user_features2; } ;
struct TYPE_5__ {int (* enable_nested ) (int *) ;} ;


 int CPU_FTR_ARCH_300 ;
 int CPU_FTR_HVMODE ;
 int CPU_FTR_P9_TM_HV_ASSIST ;
 int KVM_MAX_VCPUS ;
 int KVM_MAX_VCPU_ID ;
 int PPC_FEATURE2_HTM ;
 int cpu_has_feature (int ) ;
 TYPE_3__* cur_cpu_spec ;
 int is_kvmppc_hv_enabled (struct kvm*) ;
 TYPE_2__* kvmppc_hv_ops ;
 int kvmppc_hwrng_present () ;
 int kvmppc_xive_native_supported () ;
 int num_online_cpus () ;
 int num_present_cpus () ;
 int radix_enabled () ;
 int stub1 (int *) ;
 int threads_per_subcore ;
 int xive_enabled () ;

int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
{
 int r;

 int hv_enabled = kvmppc_hv_ops ? 1 : 0;

 if (kvm) {




  hv_enabled = is_kvmppc_hv_enabled(kvm);
 }

 switch (ext) {





 case 138:
 case 152:
 case 141:

 case 135:
 case 148:
 case 171:
 case 163:
 case 169:
 case 172:
 case 170:
  r = 1;
  break;
 case 142:
 case 143:
 case 154:




  r = !hv_enabled;
  break;
 case 128:





  r = 0;

  break;





 case 164:






  if (hv_enabled)
   r = num_present_cpus();
  else
   r = num_online_cpus();
  break;
 case 166:
  r = KVM_MAX_VCPUS;
  break;
 case 165:
  r = KVM_MAX_VCPU_ID;
  break;
 default:
  r = 0;
  break;
 }
 return r;

}
