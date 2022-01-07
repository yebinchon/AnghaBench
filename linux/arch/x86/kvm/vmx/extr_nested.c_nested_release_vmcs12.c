
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long long current_vmptr; int posted_intr_nv; int cached_vmcs12; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;
struct TYPE_3__ {int guest_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_MMU_ROOTS_ALL ;
 int PAGE_SHIFT ;
 int VMCS12_SIZE ;
 int copy_shadow_to_vmcs12 (struct vcpu_vmx*) ;
 int copy_vmcs02_to_vmcs12_rare (struct kvm_vcpu*,int ) ;
 scalar_t__ enable_shadow_vmcs ;
 int get_vmcs12 (struct kvm_vcpu*) ;
 int kvm_mmu_free_roots (struct kvm_vcpu*,int *,int ) ;
 int kvm_vcpu_write_guest_page (struct kvm_vcpu*,int,int ,int ,int ) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_disable_shadow_vmcs (struct vcpu_vmx*) ;

__attribute__((used)) static inline void nested_release_vmcs12(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (vmx->nested.current_vmptr == -1ull)
  return;

 copy_vmcs02_to_vmcs12_rare(vcpu, get_vmcs12(vcpu));

 if (enable_shadow_vmcs) {


  copy_shadow_to_vmcs12(vmx);
  vmx_disable_shadow_vmcs(vmx);
 }
 vmx->nested.posted_intr_nv = -1;


 kvm_vcpu_write_guest_page(vcpu,
      vmx->nested.current_vmptr >> PAGE_SHIFT,
      vmx->nested.cached_vmcs12, 0, VMCS12_SIZE);

 kvm_mmu_free_roots(vcpu, &vcpu->arch.guest_mmu, KVM_MMU_ROOTS_ALL);

 vmx->nested.current_vmptr = -1ull;
}
