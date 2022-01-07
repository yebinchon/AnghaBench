
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* apic; scalar_t__ apicv_active; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_6__ {int (* update_cr8_intercept ) (struct kvm_vcpu*,int,int) ;} ;
struct TYPE_4__ {int vapic_addr; } ;


 int kvm_lapic_find_highest_irr (struct kvm_vcpu*) ;
 int kvm_lapic_get_cr8 (struct kvm_vcpu*) ;
 TYPE_3__* kvm_x86_ops ;
 int lapic_in_kernel (struct kvm_vcpu*) ;
 int stub1 (struct kvm_vcpu*,int,int) ;

__attribute__((used)) static void update_cr8_intercept(struct kvm_vcpu *vcpu)
{
 int max_irr, tpr;

 if (!kvm_x86_ops->update_cr8_intercept)
  return;

 if (!lapic_in_kernel(vcpu))
  return;

 if (vcpu->arch.apicv_active)
  return;

 if (!vcpu->arch.apic->vapic_addr)
  max_irr = kvm_lapic_find_highest_irr(vcpu);
 else
  max_irr = -1;

 if (max_irr != -1)
  max_irr >>= 4;

 tpr = kvm_lapic_get_cr8(vcpu);

 kvm_x86_ops->update_cr8_intercept(vcpu, tpr, max_irr);
}
