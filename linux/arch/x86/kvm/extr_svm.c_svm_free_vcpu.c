
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct vcpu_svm* guest_fpu; struct vcpu_svm* user_fpu; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct TYPE_4__ {int msrpm; int hsave; } ;
struct vcpu_svm {TYPE_3__ vcpu; TYPE_1__ nested; int msrpm; int vmcb_pa; int vmcb; } ;
struct kvm_vcpu {int dummy; } ;


 int MSRPM_ALLOC_ORDER ;
 int PAGE_SHIFT ;
 int __free_page (int ) ;
 int __free_pages (int ,int ) ;
 int __sme_clr (int ) ;
 int kmem_cache_free (int ,struct vcpu_svm*) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_uninit (struct kvm_vcpu*) ;
 int pfn_to_page (int) ;
 int svm_clear_current_vmcb (int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 int virt_to_page (int ) ;
 int x86_fpu_cache ;

__attribute__((used)) static void svm_free_vcpu(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);






 svm_clear_current_vmcb(svm->vmcb);

 __free_page(pfn_to_page(__sme_clr(svm->vmcb_pa) >> PAGE_SHIFT));
 __free_pages(virt_to_page(svm->msrpm), MSRPM_ALLOC_ORDER);
 __free_page(virt_to_page(svm->nested.hsave));
 __free_pages(virt_to_page(svm->nested.msrpm), MSRPM_ALLOC_ORDER);
 kvm_vcpu_uninit(vcpu);
 kmem_cache_free(x86_fpu_cache, svm->vcpu.arch.user_fpu);
 kmem_cache_free(x86_fpu_cache, svm->vcpu.arch.guest_fpu);
 kmem_cache_free(kvm_vcpu_cache, svm);
}
