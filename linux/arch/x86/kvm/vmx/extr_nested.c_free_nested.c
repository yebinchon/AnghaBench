
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vmxon; } ;
struct TYPE_8__ {int vmxon; int posted_intr_nv; unsigned long long current_vmptr; int vmcs02; int * pi_desc; int pi_desc_map; int virtual_apic_map; int * apic_access_page; int * cached_shadow_vmcs12; int * cached_vmcs12; int vpid02; TYPE_1__ smm; } ;
struct TYPE_6__ {int * shadow_vmcs; } ;
struct vcpu_vmx {TYPE_4__ nested; TYPE_2__ vmcs01; } ;
struct TYPE_7__ {int guest_mmu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;


 int KVM_MMU_ROOTS_ALL ;
 int KVM_REQ_GET_VMCS12_PAGES ;
 scalar_t__ enable_shadow_vmcs ;
 int free_loaded_vmcs (int *) ;
 int free_vmcs (int *) ;
 int free_vpid (int ) ;
 int kfree (int *) ;
 int kvm_clear_request (int ,struct kvm_vcpu*) ;
 int kvm_mmu_free_roots (struct kvm_vcpu*,int *,int ) ;
 int kvm_release_page_dirty (int *) ;
 int kvm_vcpu_unmap (struct kvm_vcpu*,int *,int) ;
 int nested_release_evmcs (struct kvm_vcpu*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_clear (int *) ;
 int vmx_disable_shadow_vmcs (struct vcpu_vmx*) ;

__attribute__((used)) static void free_nested(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (!vmx->nested.vmxon && !vmx->nested.smm.vmxon)
  return;

 kvm_clear_request(KVM_REQ_GET_VMCS12_PAGES, vcpu);

 vmx->nested.vmxon = 0;
 vmx->nested.smm.vmxon = 0;
 free_vpid(vmx->nested.vpid02);
 vmx->nested.posted_intr_nv = -1;
 vmx->nested.current_vmptr = -1ull;
 if (enable_shadow_vmcs) {
  vmx_disable_shadow_vmcs(vmx);
  vmcs_clear(vmx->vmcs01.shadow_vmcs);
  free_vmcs(vmx->vmcs01.shadow_vmcs);
  vmx->vmcs01.shadow_vmcs = ((void*)0);
 }
 kfree(vmx->nested.cached_vmcs12);
 vmx->nested.cached_vmcs12 = ((void*)0);
 kfree(vmx->nested.cached_shadow_vmcs12);
 vmx->nested.cached_shadow_vmcs12 = ((void*)0);

 if (vmx->nested.apic_access_page) {
  kvm_release_page_dirty(vmx->nested.apic_access_page);
  vmx->nested.apic_access_page = ((void*)0);
 }
 kvm_vcpu_unmap(vcpu, &vmx->nested.virtual_apic_map, 1);
 kvm_vcpu_unmap(vcpu, &vmx->nested.pi_desc_map, 1);
 vmx->nested.pi_desc = ((void*)0);

 kvm_mmu_free_roots(vcpu, &vcpu->arch.guest_mmu, KVM_MMU_ROOTS_ALL);

 nested_release_evmcs(vcpu);

 free_loaded_vmcs(&vmx->nested.vmcs02);
}
