
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msr_val; } ;
struct TYPE_4__ {TYPE_1__ apf; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int KVM_ASYNC_PF_ENABLED ;
 int kvm_can_do_async_pf (struct kvm_vcpu*) ;

bool kvm_arch_can_inject_async_page_present(struct kvm_vcpu *vcpu)
{
 if (!(vcpu->arch.apf.msr_val & KVM_ASYNC_PF_ENABLED))
  return 1;
 else
  return kvm_can_do_async_pf(vcpu);
}
