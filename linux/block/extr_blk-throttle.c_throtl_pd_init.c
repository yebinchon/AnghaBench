
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct throtl_service_queue {int * parent_sq; } ;
struct throtl_grp {struct throtl_data* td; struct throtl_service_queue service_queue; } ;
struct throtl_data {int service_queue; } ;
struct blkg_policy_data {int dummy; } ;
struct blkcg_gq {scalar_t__ parent; TYPE_1__* q; } ;
struct TYPE_4__ {int service_queue; } ;
struct TYPE_3__ {struct throtl_data* td; } ;


 TYPE_2__* blkg_to_tg (scalar_t__) ;
 scalar_t__ cgroup_subsys_on_dfl (int ) ;
 int io_cgrp_subsys ;
 struct throtl_grp* pd_to_tg (struct blkg_policy_data*) ;
 struct blkcg_gq* tg_to_blkg (struct throtl_grp*) ;

__attribute__((used)) static void throtl_pd_init(struct blkg_policy_data *pd)
{
 struct throtl_grp *tg = pd_to_tg(pd);
 struct blkcg_gq *blkg = tg_to_blkg(tg);
 struct throtl_data *td = blkg->q->td;
 struct throtl_service_queue *sq = &tg->service_queue;
 sq->parent_sq = &td->service_queue;
 if (cgroup_subsys_on_dfl(io_cgrp_subsys) && blkg->parent)
  sq->parent_sq = &blkg_to_tg(blkg->parent)->service_queue;
 tg->td = td;
}
