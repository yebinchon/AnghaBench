
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int vmxon; } ;
struct TYPE_4__ {TYPE_1__ nested; } ;


 int UD_VECTOR ;
 int kvm_inject_gp (struct kvm_vcpu*,int ) ;
 int kvm_queue_exception (struct kvm_vcpu*,int ) ;
 TYPE_2__* to_vmx (struct kvm_vcpu*) ;
 scalar_t__ vmx_get_cpl (struct kvm_vcpu*) ;

__attribute__((used)) static int nested_vmx_check_permission(struct kvm_vcpu *vcpu)
{
 if (!to_vmx(vcpu)->nested.vmxon) {
  kvm_queue_exception(vcpu, UD_VECTOR);
  return 0;
 }

 if (vmx_get_cpl(vcpu)) {
  kvm_inject_gp(vcpu, 0);
  return 0;
 }

 return 1;
}
