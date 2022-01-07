
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent_sq; } ;
struct throtl_grp {TYPE_1__ service_queue; } ;
struct TYPE_4__ {int parent; } ;


 struct throtl_grp* sq_to_tg (int ) ;
 TYPE_2__* tg_to_blkg (struct throtl_grp*) ;
 scalar_t__ throtl_tg_can_upgrade (struct throtl_grp*) ;

__attribute__((used)) static bool throtl_hierarchy_can_upgrade(struct throtl_grp *tg)
{
 while (1) {
  if (throtl_tg_can_upgrade(tg))
   return 1;
  tg = sq_to_tg(tg->service_queue.parent_sq);
  if (!tg || !tg_to_blkg(tg)->parent)
   return 0;
 }
 return 0;
}
