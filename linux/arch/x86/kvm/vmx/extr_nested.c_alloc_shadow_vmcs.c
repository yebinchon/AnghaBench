
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs {int dummy; } ;
struct loaded_vmcs {struct vmcs* shadow_vmcs; } ;
struct vcpu_vmx {struct loaded_vmcs vmcs01; struct loaded_vmcs* loaded_vmcs; } ;
struct kvm_vcpu {int dummy; } ;


 int WARN_ON (int) ;
 struct vmcs* alloc_vmcs (int) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_clear (struct vmcs*) ;

__attribute__((used)) static struct vmcs *alloc_shadow_vmcs(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 struct loaded_vmcs *loaded_vmcs = vmx->loaded_vmcs;







 WARN_ON(loaded_vmcs == &vmx->vmcs01 && loaded_vmcs->shadow_vmcs);

 if (!loaded_vmcs->shadow_vmcs) {
  loaded_vmcs->shadow_vmcs = alloc_vmcs(1);
  if (loaded_vmcs->shadow_vmcs)
   vmcs_clear(loaded_vmcs->shadow_vmcs);
 }
 return loaded_vmcs->shadow_vmcs;
}
