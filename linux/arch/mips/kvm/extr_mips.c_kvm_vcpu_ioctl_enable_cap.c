
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fpu_enabled; int msa_enabled; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;
struct kvm_enable_cap {int cap; scalar_t__* args; scalar_t__ flags; } ;


 int EINVAL ;


 int kvm_vm_ioctl_check_extension (int ,int) ;

__attribute__((used)) static int kvm_vcpu_ioctl_enable_cap(struct kvm_vcpu *vcpu,
         struct kvm_enable_cap *cap)
{
 int r = 0;

 if (!kvm_vm_ioctl_check_extension(vcpu->kvm, cap->cap))
  return -EINVAL;
 if (cap->flags)
  return -EINVAL;
 if (cap->args[0])
  return -EINVAL;

 switch (cap->cap) {
 case 129:
  vcpu->arch.fpu_enabled = 1;
  break;
 case 128:
  vcpu->arch.msa_enabled = 1;
  break;
 default:
  r = -EINVAL;
  break;
 }

 return r;
}
