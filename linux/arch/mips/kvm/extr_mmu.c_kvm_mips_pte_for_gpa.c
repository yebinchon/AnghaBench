
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_mmu_memory_cache {int dummy; } ;
struct TYPE_3__ {int pgd; } ;
struct TYPE_4__ {TYPE_1__ gpa_mm; } ;
struct kvm {TYPE_2__ arch; } ;
typedef int pte_t ;


 int * kvm_mips_walk_pgd (int ,struct kvm_mmu_memory_cache*,unsigned long) ;

__attribute__((used)) static pte_t *kvm_mips_pte_for_gpa(struct kvm *kvm,
       struct kvm_mmu_memory_cache *cache,
       unsigned long addr)
{
 return kvm_mips_walk_pgd(kvm->arch.gpa_mm.pgd, cache, addr);
}
