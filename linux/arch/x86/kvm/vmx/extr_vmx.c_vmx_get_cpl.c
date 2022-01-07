
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vm86_active; } ;
struct vcpu_vmx {TYPE_1__ rmode; } ;
struct kvm_vcpu {int dummy; } ;


 int VCPU_SREG_SS ;
 int VMX_AR_DPL (int) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 scalar_t__ unlikely (int ) ;
 int vmx_read_guest_seg_ar (struct vcpu_vmx*,int ) ;

int vmx_get_cpl(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (unlikely(vmx->rmode.vm86_active))
  return 0;
 else {
  int ar = vmx_read_guest_seg_ar(vmx, VCPU_SREG_SS);
  return VMX_AR_DPL(ar);
 }
}
