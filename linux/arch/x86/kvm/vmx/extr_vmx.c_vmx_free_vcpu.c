
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct vcpu_vmx* guest_fpu; struct vcpu_vmx* user_fpu; } ;
struct TYPE_3__ {TYPE_2__ arch; } ;
struct vcpu_vmx {TYPE_1__ vcpu; int guest_msrs; int loaded_vmcs; int vpid; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ enable_pml ;
 int free_loaded_vmcs (int ) ;
 int free_vpid (int ) ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct vcpu_vmx*) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_uninit (struct kvm_vcpu*) ;
 int nested_vmx_free_vcpu (struct kvm_vcpu*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_destroy_pml_buffer (struct vcpu_vmx*) ;
 int x86_fpu_cache ;

__attribute__((used)) static void vmx_free_vcpu(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (enable_pml)
  vmx_destroy_pml_buffer(vmx);
 free_vpid(vmx->vpid);
 nested_vmx_free_vcpu(vcpu);
 free_loaded_vmcs(vmx->loaded_vmcs);
 kfree(vmx->guest_msrs);
 kvm_vcpu_uninit(vcpu);
 kmem_cache_free(x86_fpu_cache, vmx->vcpu.arch.user_fpu);
 kmem_cache_free(x86_fpu_cache, vmx->vcpu.arch.guest_fpu);
 kmem_cache_free(kvm_vcpu_cache, vmx);
}
