
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {unsigned long (* get_rflags ) (struct kvm_vcpu*) ;int (* skip_emulated_instruction ) (struct kvm_vcpu*) ;} ;


 unsigned long X86_EFLAGS_TF ;
 int kvm_vcpu_do_singlestep (struct kvm_vcpu*) ;
 TYPE_1__* kvm_x86_ops ;
 unsigned long stub1 (struct kvm_vcpu*) ;
 int stub2 (struct kvm_vcpu*) ;
 scalar_t__ unlikely (unsigned long) ;

int kvm_skip_emulated_instruction(struct kvm_vcpu *vcpu)
{
 unsigned long rflags = kvm_x86_ops->get_rflags(vcpu);
 int r;

 r = kvm_x86_ops->skip_emulated_instruction(vcpu);
 if (unlikely(!r))
  return 0;
 if (unlikely(rflags & X86_EFLAGS_TF))
  r = kvm_vcpu_do_singlestep(vcpu);
 return r;
}
