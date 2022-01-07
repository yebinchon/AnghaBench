
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * pgd; } ;
struct TYPE_4__ {int * pgd; } ;
struct kvm_mmu_memory_cache {int dummy; } ;
struct TYPE_6__ {TYPE_2__ guest_user_mm; TYPE_1__ guest_kernel_mm; struct kvm_mmu_memory_cache mmu_page_cache; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
typedef int pte_t ;
typedef int pgd_t ;


 scalar_t__ KVM_GUEST_KERNEL_MODE (struct kvm_vcpu*) ;
 int KVM_MMU_CACHE_MIN_PAGES ;
 int KVM_NR_MEM_OBJS ;
 int * kvm_mips_walk_pgd (int *,struct kvm_mmu_memory_cache*,unsigned long) ;
 int mmu_topup_memory_cache (struct kvm_mmu_memory_cache*,int ,int ) ;

__attribute__((used)) static pte_t *kvm_trap_emul_pte_for_gva(struct kvm_vcpu *vcpu,
     unsigned long addr)
{
 struct kvm_mmu_memory_cache *memcache = &vcpu->arch.mmu_page_cache;
 pgd_t *pgdp;
 int ret;


 ret = mmu_topup_memory_cache(memcache, KVM_MMU_CACHE_MIN_PAGES,
         KVM_NR_MEM_OBJS);
 if (ret)
  return ((void*)0);

 if (KVM_GUEST_KERNEL_MODE(vcpu))
  pgdp = vcpu->arch.guest_kernel_mm.pgd;
 else
  pgdp = vcpu->arch.guest_user_mm.pgd;

 return kvm_mips_walk_pgd(pgdp, memcache, addr);
}
