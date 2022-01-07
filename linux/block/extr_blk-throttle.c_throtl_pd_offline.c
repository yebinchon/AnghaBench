
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct throtl_grp {TYPE_1__* td; scalar_t__** iops; scalar_t__** bps; } ;
struct blkg_policy_data {int dummy; } ;
struct TYPE_3__ {size_t limit_index; int * limit_valid; } ;


 size_t LIMIT_LOW ;
 size_t READ ;
 size_t WRITE ;
 int blk_throtl_update_limit_valid (TYPE_1__*) ;
 struct throtl_grp* pd_to_tg (struct blkg_policy_data*) ;
 int throtl_upgrade_state (TYPE_1__*) ;

__attribute__((used)) static void throtl_pd_offline(struct blkg_policy_data *pd)
{
 struct throtl_grp *tg = pd_to_tg(pd);

 tg->bps[READ][LIMIT_LOW] = 0;
 tg->bps[WRITE][LIMIT_LOW] = 0;
 tg->iops[READ][LIMIT_LOW] = 0;
 tg->iops[WRITE][LIMIT_LOW] = 0;

 blk_throtl_update_limit_valid(tg->td);

 if (!tg->td->limit_valid[tg->td->limit_index])
  throtl_upgrade_state(tg->td);
}
