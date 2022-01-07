
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bfq_service_tree {int active; } ;
struct bfq_entity {int dummy; } ;


 scalar_t__ RB_EMPTY_ROOT (int *) ;
 int bfq_calc_vtime_jump (struct bfq_service_tree*) ;
 struct bfq_entity* bfq_first_active_entity (struct bfq_service_tree*,int ) ;
 int bfq_update_vtime (struct bfq_service_tree*,int ) ;

__attribute__((used)) static struct bfq_entity *
__bfq_lookup_next_entity(struct bfq_service_tree *st, bool in_service)
{
 struct bfq_entity *entity;
 u64 new_vtime;

 if (RB_EMPTY_ROOT(&st->active))
  return ((void*)0);





 new_vtime = bfq_calc_vtime_jump(st);
 if (!in_service)
  bfq_update_vtime(st, new_vtime);

 entity = bfq_first_active_entity(st, new_vtime);

 return entity;
}
