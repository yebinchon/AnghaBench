
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oldpir; void* shared; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvmppc_vcpu_e500 {struct kvm_vcpu vcpu; } ;
struct kvm {int dummy; } ;


 int ENOMEM ;
 struct kvm_vcpu* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_page (int) ;
 int kmem_cache_free (int ,struct kvmppc_vcpu_e500*) ;
 struct kvmppc_vcpu_e500* kmem_cache_zalloc (int ,int) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_init (struct kvm_vcpu*,struct kvm*,unsigned int) ;
 int kvm_vcpu_uninit (struct kvm_vcpu*) ;
 int kvmppc_e500_tlb_init (struct kvmppc_vcpu_e500*) ;
 int kvmppc_e500_tlb_uninit (struct kvmppc_vcpu_e500*) ;

__attribute__((used)) static struct kvm_vcpu *kvmppc_core_vcpu_create_e500mc(struct kvm *kvm,
             unsigned int id)
{
 struct kvmppc_vcpu_e500 *vcpu_e500;
 struct kvm_vcpu *vcpu;
 int err;

 vcpu_e500 = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
 if (!vcpu_e500) {
  err = -ENOMEM;
  goto out;
 }
 vcpu = &vcpu_e500->vcpu;


 vcpu->arch.oldpir = 0xffffffff;

 err = kvm_vcpu_init(vcpu, kvm, id);
 if (err)
  goto free_vcpu;

 err = kvmppc_e500_tlb_init(vcpu_e500);
 if (err)
  goto uninit_vcpu;

 vcpu->arch.shared = (void *)__get_free_page(GFP_KERNEL | __GFP_ZERO);
 if (!vcpu->arch.shared) {
  err = -ENOMEM;
  goto uninit_tlb;
 }

 return vcpu;

uninit_tlb:
 kvmppc_e500_tlb_uninit(vcpu_e500);
uninit_vcpu:
 kvm_vcpu_uninit(vcpu);

free_vcpu:
 kmem_cache_free(kvm_vcpu_cache, vcpu_e500);
out:
 return ERR_PTR(err);
}
