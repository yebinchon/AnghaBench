
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rmap_iterator {int dummy; } ;
struct kvm_mmu_page {int parent_ptes; } ;
struct kvm {int dummy; } ;


 int drop_parent_pte (struct kvm_mmu_page*,int *) ;
 int * rmap_get_first (int *,struct rmap_iterator*) ;

__attribute__((used)) static void kvm_mmu_unlink_parents(struct kvm *kvm, struct kvm_mmu_page *sp)
{
 u64 *sptep;
 struct rmap_iterator iter;

 while ((sptep = rmap_get_first(&sp->parent_ptes, &iter)))
  drop_parent_pte(sp, sptep);
}
