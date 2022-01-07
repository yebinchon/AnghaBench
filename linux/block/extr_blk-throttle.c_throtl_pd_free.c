
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending_timer; } ;
struct throtl_grp {TYPE_1__ service_queue; } ;
struct blkg_policy_data {int dummy; } ;


 int del_timer_sync (int *) ;
 int kfree (struct throtl_grp*) ;
 struct throtl_grp* pd_to_tg (struct blkg_policy_data*) ;

__attribute__((used)) static void throtl_pd_free(struct blkg_policy_data *pd)
{
 struct throtl_grp *tg = pd_to_tg(pd);

 del_timer_sync(&tg->service_queue.pending_timer);
 kfree(tg);
}
