
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* tlb_flush ) (struct kvm_vcpu*,int) ;} ;


 int kvm_mmu_load_cr3 (struct kvm_vcpu*) ;
 int kvm_mmu_sync_roots (struct kvm_vcpu*) ;
 TYPE_1__* kvm_x86_ops ;
 int mmu_alloc_roots (struct kvm_vcpu*) ;
 int mmu_topup_memory_caches (struct kvm_vcpu*) ;
 int stub1 (struct kvm_vcpu*,int) ;

int kvm_mmu_load(struct kvm_vcpu *vcpu)
{
 int r;

 r = mmu_topup_memory_caches(vcpu);
 if (r)
  goto out;
 r = mmu_alloc_roots(vcpu);
 kvm_mmu_sync_roots(vcpu);
 if (r)
  goto out;
 kvm_mmu_load_cr3(vcpu);
 kvm_x86_ops->tlb_flush(vcpu, 1);
out:
 return r;
}
