
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ioc_now {int vnow; } ;
struct TYPE_8__ {int function; } ;
struct ioc_gq {size_t level; struct ioc_gq** ancestors; TYPE_4__ delay_timer; TYPE_4__ waitq_timer; int waitq; void* hweight_inuse; void* hweight_active; int active_list; int active_period; int abs_vdebt; int done_vtime; int vtime; struct ioc* ioc; int pd; } ;
struct ioc {int lock; int cur_period; } ;
struct blkg_policy_data {int dummy; } ;
struct blkcg_gq {struct blkcg_gq* parent; TYPE_3__* blkcg; int q; } ;
struct TYPE_6__ {TYPE_1__* cgroup; } ;
struct TYPE_7__ {TYPE_2__ css; } ;
struct TYPE_5__ {size_t level; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_ABS ;
 void* HWEIGHT_WHOLE ;
 int INIT_LIST_HEAD (int *) ;
 int atomic64_read (int *) ;
 int atomic64_set (int *,int ) ;
 struct ioc_gq* blkg_to_iocg (struct blkcg_gq*) ;
 int hrtimer_init (TYPE_4__*,int ,int ) ;
 int init_waitqueue_head (int *) ;
 int ioc_now (struct ioc*,struct ioc_now*) ;
 int iocg_delay_timer_fn ;
 int iocg_waitq_timer_fn ;
 struct blkcg_gq* pd_to_blkg (int *) ;
 struct ioc_gq* pd_to_iocg (struct blkg_policy_data*) ;
 struct ioc* q_to_ioc (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int weight_updated (struct ioc_gq*) ;

__attribute__((used)) static void ioc_pd_init(struct blkg_policy_data *pd)
{
 struct ioc_gq *iocg = pd_to_iocg(pd);
 struct blkcg_gq *blkg = pd_to_blkg(&iocg->pd);
 struct ioc *ioc = q_to_ioc(blkg->q);
 struct ioc_now now;
 struct blkcg_gq *tblkg;
 unsigned long flags;

 ioc_now(ioc, &now);

 iocg->ioc = ioc;
 atomic64_set(&iocg->vtime, now.vnow);
 atomic64_set(&iocg->done_vtime, now.vnow);
 atomic64_set(&iocg->abs_vdebt, 0);
 atomic64_set(&iocg->active_period, atomic64_read(&ioc->cur_period));
 INIT_LIST_HEAD(&iocg->active_list);
 iocg->hweight_active = HWEIGHT_WHOLE;
 iocg->hweight_inuse = HWEIGHT_WHOLE;

 init_waitqueue_head(&iocg->waitq);
 hrtimer_init(&iocg->waitq_timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 iocg->waitq_timer.function = iocg_waitq_timer_fn;
 hrtimer_init(&iocg->delay_timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 iocg->delay_timer.function = iocg_delay_timer_fn;

 iocg->level = blkg->blkcg->css.cgroup->level;

 for (tblkg = blkg; tblkg; tblkg = tblkg->parent) {
  struct ioc_gq *tiocg = blkg_to_iocg(tblkg);
  iocg->ancestors[tiocg->level] = tiocg;
 }

 spin_lock_irqsave(&ioc->lock, flags);
 weight_updated(iocg);
 spin_unlock_irqrestore(&ioc->lock, flags);
}
