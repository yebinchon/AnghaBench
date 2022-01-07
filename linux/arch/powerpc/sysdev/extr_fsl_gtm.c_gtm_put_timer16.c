
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gtm_timer {int requested; TYPE_1__* gtm; } ;
struct TYPE_2__ {int lock; } ;


 int gtm_stop_timer16 (struct gtm_timer*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void gtm_put_timer16(struct gtm_timer *tmr)
{
 gtm_stop_timer16(tmr);

 spin_lock_irq(&tmr->gtm->lock);
 tmr->requested = 0;
 spin_unlock_irq(&tmr->gtm->lock);
}
