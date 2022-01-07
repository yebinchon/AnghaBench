
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc_gq {int delay_timer; int waitq_timer; int active_list; struct ioc* ioc; } ;
struct ioc {int lock; } ;
struct blkg_policy_data {int dummy; } ;


 int hrtimer_cancel (int *) ;
 int kfree (struct ioc_gq*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 struct ioc_gq* pd_to_iocg (struct blkg_policy_data*) ;
 int propagate_active_weight (struct ioc_gq*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ioc_pd_free(struct blkg_policy_data *pd)
{
 struct ioc_gq *iocg = pd_to_iocg(pd);
 struct ioc *ioc = iocg->ioc;

 if (ioc) {
  spin_lock(&ioc->lock);
  if (!list_empty(&iocg->active_list)) {
   propagate_active_weight(iocg, 0, 0);
   list_del_init(&iocg->active_list);
  }
  spin_unlock(&ioc->lock);

  hrtimer_cancel(&iocg->waitq_timer);
  hrtimer_cancel(&iocg->delay_timer);
 }
 kfree(iocg);
}
