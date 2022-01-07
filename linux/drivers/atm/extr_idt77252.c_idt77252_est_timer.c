
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct vc_map {scalar_t__ max_er; scalar_t__ lacr; int index; int lock; int estimator; struct idt77252_dev* card; } ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct rate_estimator {int interval; long avcps; long ewma_log; int cps; int maxcps; TYPE_1__ timer; scalar_t__ last_cells; scalar_t__ cells; struct vc_map* vc; } ;
struct idt77252_dev {int dummy; } ;


 int HZ ;
 int SAR_REG_TCMDQ ;
 int TCMDQ_LACR ;
 int add_timer (TYPE_1__*) ;
 struct rate_estimator* est ;
 struct rate_estimator* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ idt77252_rate_logindex (struct idt77252_dev*,int) ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;
 int writel (int,int ) ;

__attribute__((used)) static void
idt77252_est_timer(struct timer_list *t)
{
 struct rate_estimator *est = from_timer(est, t, timer);
 struct vc_map *vc = est->vc;
 struct idt77252_dev *card = vc->card;
 unsigned long flags;
 u32 rate, cps;
 u64 ncells;
 u8 lacr;

 spin_lock_irqsave(&vc->lock, flags);
 if (!vc->estimator)
  goto out;
 ncells = est->cells;

 rate = ((u32)(ncells - est->last_cells)) << (7 - est->interval);
 est->last_cells = ncells;
 est->avcps += ((long)rate - (long)est->avcps) >> est->ewma_log;
 est->cps = (est->avcps + 0x1f) >> 5;

 cps = est->cps;
 if (cps < (est->maxcps >> 4))
  cps = est->maxcps >> 4;

 lacr = idt77252_rate_logindex(card, cps);
 if (lacr > vc->max_er)
  lacr = vc->max_er;

 if (lacr != vc->lacr) {
  vc->lacr = lacr;
  writel(TCMDQ_LACR|(vc->lacr << 16)|vc->index, SAR_REG_TCMDQ);
 }

 est->timer.expires = jiffies + ((HZ / 4) << est->interval);
 add_timer(&est->timer);

out:
 spin_unlock_irqrestore(&vc->lock, flags);
}
