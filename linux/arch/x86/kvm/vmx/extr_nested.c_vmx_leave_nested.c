
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {scalar_t__ nested_run_pending; } ;
struct TYPE_4__ {TYPE_1__ nested; } ;


 int free_nested (struct kvm_vcpu*) ;
 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;
 int nested_vmx_vmexit (struct kvm_vcpu*,int,int ,int ) ;
 TYPE_2__* to_vmx (struct kvm_vcpu*) ;

void vmx_leave_nested(struct kvm_vcpu *vcpu)
{
 if (is_guest_mode(vcpu)) {
  to_vmx(vcpu)->nested.nested_run_pending = 0;
  nested_vmx_vmexit(vcpu, -1, 0, 0);
 }
 free_nested(vcpu);
}
