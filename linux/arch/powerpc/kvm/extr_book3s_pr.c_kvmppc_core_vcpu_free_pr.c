
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcpu_book3s {int dummy; } ;
struct TYPE_2__ {int shadow_vcpu; scalar_t__ shared; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 unsigned long PAGE_MASK ;
 int free_page (unsigned long) ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_uninit (struct kvm_vcpu*) ;
 struct kvmppc_vcpu_book3s* to_book3s (struct kvm_vcpu*) ;
 int vfree (struct kvmppc_vcpu_book3s*) ;

__attribute__((used)) static void kvmppc_core_vcpu_free_pr(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcpu_book3s *vcpu_book3s = to_book3s(vcpu);

 free_page((unsigned long)vcpu->arch.shared & PAGE_MASK);
 kvm_vcpu_uninit(vcpu);



 vfree(vcpu_book3s);
 kmem_cache_free(kvm_vcpu_cache, vcpu);
}
