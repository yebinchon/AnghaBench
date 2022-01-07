
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_data {scalar_t__ bfq_user_max_budget; int bfq_max_budget; } ;


 int bfq_calc_max_budget (struct bfq_data*) ;
 int bfq_log (struct bfq_data*,char*,int ) ;

__attribute__((used)) static void update_thr_responsiveness_params(struct bfq_data *bfqd)
{
 if (bfqd->bfq_user_max_budget == 0) {
  bfqd->bfq_max_budget =
   bfq_calc_max_budget(bfqd);
  bfq_log(bfqd, "new max_budget = %d", bfqd->bfq_max_budget);
 }
}
