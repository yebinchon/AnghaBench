
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* get_interrupt_shadow ) (struct kvm_vcpu*) ;int (* set_interrupt_shadow ) (struct kvm_vcpu*,int) ;} ;


 int KVM_REQ_EVENT ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;
 int stub2 (struct kvm_vcpu*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void toggle_interruptibility(struct kvm_vcpu *vcpu, u32 mask)
{
 u32 int_shadow = kvm_x86_ops->get_interrupt_shadow(vcpu);







 if (int_shadow & mask)
  mask = 0;
 if (unlikely(int_shadow || mask)) {
  kvm_x86_ops->set_interrupt_shadow(vcpu, mask);
  if (!mask)
   kvm_make_request(KVM_REQ_EVENT, vcpu);
 }
}
