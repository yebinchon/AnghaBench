
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bfq_service_tree {int vtime; int active; } ;
struct bfq_entity {int min_start; } ;


 scalar_t__ bfq_gt (int ,int ) ;
 struct bfq_entity* bfq_root_active_entity (int *) ;

__attribute__((used)) static u64 bfq_calc_vtime_jump(struct bfq_service_tree *st)
{
 struct bfq_entity *root_entity = bfq_root_active_entity(&st->active);

 if (bfq_gt(root_entity->min_start, st->vtime))
  return root_entity->min_start;

 return st->vtime;
}
