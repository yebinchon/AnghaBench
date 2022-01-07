
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_service_queue {int first_pending_disptime; } ;
struct throtl_grp {int disptime; } ;


 struct throtl_grp* throtl_rb_first (struct throtl_service_queue*) ;

__attribute__((used)) static void update_min_dispatch_time(struct throtl_service_queue *parent_sq)
{
 struct throtl_grp *tg;

 tg = throtl_rb_first(parent_sq);
 if (!tg)
  return;

 parent_sq->first_pending_disptime = tg->disptime;
}
