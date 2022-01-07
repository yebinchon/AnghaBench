
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmcs12 {unsigned long cr0_guest_host_mask; unsigned long guest_cr0; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {scalar_t__ vmxon; } ;
struct TYPE_4__ {TYPE_1__ nested; } ;


 int CR0_READ_SHADOW ;
 struct vmcs12* get_vmcs12 (struct kvm_vcpu*) ;
 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;
 int kvm_set_cr0 (struct kvm_vcpu*,unsigned long) ;
 int nested_guest_cr0_valid (struct kvm_vcpu*,unsigned long) ;
 int nested_host_cr0_valid (struct kvm_vcpu*,unsigned long) ;
 TYPE_2__* to_vmx (struct kvm_vcpu*) ;
 int vmcs_writel (int ,unsigned long) ;

__attribute__((used)) static int handle_set_cr0(struct kvm_vcpu *vcpu, unsigned long val)
{
 if (is_guest_mode(vcpu)) {
  struct vmcs12 *vmcs12 = get_vmcs12(vcpu);
  unsigned long orig_val = val;
  val = (val & ~vmcs12->cr0_guest_host_mask) |
   (vmcs12->guest_cr0 & vmcs12->cr0_guest_host_mask);

  if (!nested_guest_cr0_valid(vcpu, val))
   return 1;

  if (kvm_set_cr0(vcpu, val))
   return 1;
  vmcs_writel(CR0_READ_SHADOW, orig_val);
  return 0;
 } else {
  if (to_vmx(vcpu)->nested.vmxon &&
      !nested_host_cr0_valid(vcpu, val))
   return 1;

  return kvm_set_cr0(vcpu, val);
 }
}
