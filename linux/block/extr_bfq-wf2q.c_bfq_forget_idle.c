
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_service_tree {int vtime; int active; struct bfq_entity* last_idle; struct bfq_entity* first_idle; } ;
struct bfq_entity {int finish; } ;


 scalar_t__ RB_EMPTY_ROOT (int *) ;
 int bfq_gt (int ,int ) ;
 int bfq_put_idle_entity (struct bfq_service_tree*,struct bfq_entity*) ;

__attribute__((used)) static void bfq_forget_idle(struct bfq_service_tree *st)
{
 struct bfq_entity *first_idle = st->first_idle;
 struct bfq_entity *last_idle = st->last_idle;

 if (RB_EMPTY_ROOT(&st->active) && last_idle &&
     !bfq_gt(last_idle->finish, st->vtime)) {




  st->vtime = last_idle->finish;
 }

 if (first_idle && !bfq_gt(first_idle->finish, st->vtime))
  bfq_put_idle_entity(st, first_idle);
}
