
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int apicv_active; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int (* refresh_apicv_exec_ctrl ) (struct kvm_vcpu*) ;} ;


 int WARN_ON_ONCE (int) ;
 TYPE_2__* kvm_x86_ops ;
 int lapic_in_kernel (struct kvm_vcpu*) ;
 int stub1 (struct kvm_vcpu*) ;

void kvm_vcpu_deactivate_apicv(struct kvm_vcpu *vcpu)
{
 if (!lapic_in_kernel(vcpu)) {
  WARN_ON_ONCE(vcpu->arch.apicv_active);
  return;
 }
 if (!vcpu->arch.apicv_active)
  return;

 vcpu->arch.apicv_active = 0;
 kvm_x86_ops->refresh_apicv_exec_ctrl(vcpu);
}
