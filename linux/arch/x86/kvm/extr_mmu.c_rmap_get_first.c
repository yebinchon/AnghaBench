
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rmap_iterator {size_t pos; struct pte_list_desc* desc; } ;
struct pte_list_desc {int ** sptes; } ;
struct kvm_rmap_head {int val; } ;


 int BUG_ON (int) ;
 int is_shadow_present_pte (int ) ;

__attribute__((used)) static u64 *rmap_get_first(struct kvm_rmap_head *rmap_head,
      struct rmap_iterator *iter)
{
 u64 *sptep;

 if (!rmap_head->val)
  return ((void*)0);

 if (!(rmap_head->val & 1)) {
  iter->desc = ((void*)0);
  sptep = (u64 *)rmap_head->val;
  goto out;
 }

 iter->desc = (struct pte_list_desc *)(rmap_head->val & ~1ul);
 iter->pos = 0;
 sptep = iter->desc->sptes[iter->pos];
out:
 BUG_ON(!is_shadow_present_pte(*sptep));
 return sptep;
}
