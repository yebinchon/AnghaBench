
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcpu_e500 {int dummy; } ;
struct TYPE_2__ {scalar_t__ shared; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int free_page (unsigned long) ;
 int kmem_cache_free (int ,struct kvmppc_vcpu_e500*) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_uninit (struct kvm_vcpu*) ;
 int kvmppc_e500_tlb_uninit (struct kvmppc_vcpu_e500*) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

__attribute__((used)) static void kvmppc_core_vcpu_free_e500mc(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);

 free_page((unsigned long)vcpu->arch.shared);
 kvmppc_e500_tlb_uninit(vcpu_e500);
 kvm_vcpu_uninit(vcpu);
 kmem_cache_free(kvm_vcpu_cache, vcpu_e500);
}
