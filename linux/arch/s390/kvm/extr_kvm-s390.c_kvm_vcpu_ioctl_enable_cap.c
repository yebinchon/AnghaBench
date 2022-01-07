
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* kvm; } ;
struct kvm_enable_cap {int cap; scalar_t__ flags; } ;
struct TYPE_4__ {int css_support; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;


 int EINVAL ;

 int VM_EVENT (TYPE_2__*,int,char*,char*) ;
 int trace_kvm_s390_enable_css (TYPE_2__*) ;

__attribute__((used)) static int kvm_vcpu_ioctl_enable_cap(struct kvm_vcpu *vcpu,
         struct kvm_enable_cap *cap)
{
 int r;

 if (cap->flags)
  return -EINVAL;

 switch (cap->cap) {
 case 128:
  if (!vcpu->kvm->arch.css_support) {
   vcpu->kvm->arch.css_support = 1;
   VM_EVENT(vcpu->kvm, 3, "%s", "ENABLE: CSS support");
   trace_kvm_s390_enable_css(vcpu->kvm);
  }
  r = 0;
  break;
 default:
  r = -EINVAL;
  break;
 }
 return r;
}
