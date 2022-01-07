
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm {int dummy; } ;
struct TYPE_4__ {int msa_id; } ;
struct TYPE_3__ {int (* check_extension ) (struct kvm*,long) ;} ;
 int KVM_MAX_VCPUS ;
 int KVM_MAX_VCPU_ID ;
 int MSA_IR_WRPF ;
 TYPE_2__ boot_cpu_data ;
 int cpu_has_msa ;
 TYPE_1__* kvm_mips_callbacks ;
 int num_online_cpus () ;
 int raw_cpu_has_fpu ;
 int stub1 (struct kvm*,long) ;

int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
{
 int r;

 switch (ext) {
 case 130:
 case 137:
 case 129:
 case 128:
 case 136:
  r = 1;
  break;
 case 131:
  r = num_online_cpus();
  break;
 case 135:
  r = KVM_MAX_VCPUS;
  break;
 case 134:
  r = KVM_MAX_VCPU_ID;
  break;
 case 133:

  r = !!raw_cpu_has_fpu;
  break;
 case 132:
  r = cpu_has_msa && !(boot_cpu_data.msa_id & MSA_IR_WRPF);
  break;
 default:
  r = kvm_mips_callbacks->check_extension(kvm, ext);
  break;
 }
 return r;
}
