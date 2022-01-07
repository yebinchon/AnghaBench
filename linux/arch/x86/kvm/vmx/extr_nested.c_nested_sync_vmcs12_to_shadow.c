
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int need_vmcs12_to_shadow_sync; TYPE_1__* hv_evmcs; scalar_t__ enlightened_vmcs_enabled; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int hv_clean_fields; } ;


 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_ALL ;
 int copy_vmcs12_to_enlightened (struct vcpu_vmx*) ;
 int copy_vmcs12_to_shadow (struct vcpu_vmx*) ;
 int nested_vmx_handle_enlightened_vmptrld (struct kvm_vcpu*,int) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;

void nested_sync_vmcs12_to_shadow(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);






 if (vmx->nested.enlightened_vmcs_enabled && !vmx->nested.hv_evmcs)
  nested_vmx_handle_enlightened_vmptrld(vcpu, 0);

 if (vmx->nested.hv_evmcs) {
  copy_vmcs12_to_enlightened(vmx);

  vmx->nested.hv_evmcs->hv_clean_fields |=
   HV_VMX_ENLIGHTENED_CLEAN_FIELD_ALL;
 } else {
  copy_vmcs12_to_shadow(vmx);
 }

 vmx->nested.need_vmcs12_to_shadow_sync = 0;
}
