
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcpu_book3s {int dummy; } ;
struct TYPE_2__ {int shared_big_endian; int pvr; int slb_nr; int shadow_msr; int shadow_vcpu; int intr_msr; void* shared; struct kvmppc_vcpu_book3s* book3s; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm {int dummy; } ;


 int ENOMEM ;
 struct kvm_vcpu* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MMU_FTR_1T_SEGMENT ;
 int MSR_LE ;
 int MSR_SF ;
 int MSR_USER64 ;
 int SPRN_PVR ;
 int __GFP_ZERO ;
 unsigned long __get_free_page (int) ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct kvm_vcpu*) ;
 struct kvm_vcpu* kmem_cache_zalloc (int ,int) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_init (struct kvm_vcpu*,struct kvm*,unsigned int) ;
 int kvm_vcpu_uninit (struct kvm_vcpu*) ;
 int kvmppc_mmu_init (struct kvm_vcpu*) ;
 int kvmppc_set_pvr_pr (struct kvm_vcpu*,int) ;
 int kzalloc (int,int) ;
 int mfspr (int ) ;
 scalar_t__ mmu_has_feature (int ) ;
 int vfree (struct kvmppc_vcpu_book3s*) ;
 struct kvmppc_vcpu_book3s* vzalloc (int) ;

__attribute__((used)) static struct kvm_vcpu *kvmppc_core_vcpu_create_pr(struct kvm *kvm,
         unsigned int id)
{
 struct kvmppc_vcpu_book3s *vcpu_book3s;
 struct kvm_vcpu *vcpu;
 int err = -ENOMEM;
 unsigned long p;

 vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
 if (!vcpu)
  goto out;

 vcpu_book3s = vzalloc(sizeof(struct kvmppc_vcpu_book3s));
 if (!vcpu_book3s)
  goto free_vcpu;
 vcpu->arch.book3s = vcpu_book3s;
 err = kvm_vcpu_init(vcpu, kvm, id);
 if (err)
  goto free_shadow_vcpu;

 err = -ENOMEM;
 p = __get_free_page(GFP_KERNEL|__GFP_ZERO);
 if (!p)
  goto uninit_vcpu;
 vcpu->arch.shared = (void *)p;
 vcpu->arch.pvr = 0x84202;

 kvmppc_set_pvr_pr(vcpu, vcpu->arch.pvr);
 vcpu->arch.slb_nr = 64;

 vcpu->arch.shadow_msr = MSR_USER64 & ~MSR_LE;

 err = kvmppc_mmu_init(vcpu);
 if (err < 0)
  goto uninit_vcpu;

 return vcpu;

uninit_vcpu:
 kvm_vcpu_uninit(vcpu);
free_shadow_vcpu:




 vfree(vcpu_book3s);
free_vcpu:
 kmem_cache_free(kvm_vcpu_cache, vcpu);
out:
 return ERR_PTR(err);
}
