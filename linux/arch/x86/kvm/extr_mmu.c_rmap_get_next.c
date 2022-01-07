
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rmap_iterator {int pos; TYPE_1__* desc; } ;
struct TYPE_2__ {int ** sptes; struct TYPE_2__* more; } ;


 int BUG_ON (int) ;
 int PTE_LIST_EXT ;
 int is_shadow_present_pte (int ) ;

__attribute__((used)) static u64 *rmap_get_next(struct rmap_iterator *iter)
{
 u64 *sptep;

 if (iter->desc) {
  if (iter->pos < PTE_LIST_EXT - 1) {
   ++iter->pos;
   sptep = iter->desc->sptes[iter->pos];
   if (sptep)
    goto out;
  }

  iter->desc = iter->desc->more;

  if (iter->desc) {
   iter->pos = 0;

   sptep = iter->desc->sptes[iter->pos];
   goto out;
  }
 }

 return ((void*)0);
out:
 BUG_ON(!is_shadow_present_pte(*sptep));
 return sptep;
}
