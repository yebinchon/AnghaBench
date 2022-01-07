
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ irq; } ;
struct smi_info {int timer_running; int si_lock; int interrupt_disabled; TYPE_1__ io; scalar_t__ last_timeout_jiffies; } ;
typedef enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;


 int SI_SM_CALL_WITH_DELAY ;
 int SI_SM_IDLE ;
 int SI_TIMEOUT_JIFFIES ;
 long SI_USEC_PER_JIFFY ;
 int debug_timestamp (char*) ;
 struct smi_info* from_timer (int ,struct timer_list*,int ) ;
 int jiffies ;
 int long_timeouts ;
 int short_timeouts ;
 int si_timer ;
 int smi_event_handler (struct smi_info*,long) ;
 int smi_inc_stat (struct smi_info*,int ) ;
 struct smi_info* smi_info ;
 int smi_mod_timer (struct smi_info*,long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void smi_timeout(struct timer_list *t)
{
 struct smi_info *smi_info = from_timer(smi_info, t, si_timer);
 enum si_sm_result smi_result;
 unsigned long flags;
 unsigned long jiffies_now;
 long time_diff;
 long timeout;

 spin_lock_irqsave(&(smi_info->si_lock), flags);
 debug_timestamp("Timer");

 jiffies_now = jiffies;
 time_diff = (((long)jiffies_now - (long)smi_info->last_timeout_jiffies)
       * SI_USEC_PER_JIFFY);
 smi_result = smi_event_handler(smi_info, time_diff);

 if ((smi_info->io.irq) && (!smi_info->interrupt_disabled)) {

  timeout = jiffies + SI_TIMEOUT_JIFFIES;
  smi_inc_stat(smi_info, long_timeouts);
  goto do_mod_timer;
 }





 if (smi_result == SI_SM_CALL_WITH_DELAY) {
  smi_inc_stat(smi_info, short_timeouts);
  timeout = jiffies + 1;
 } else {
  smi_inc_stat(smi_info, long_timeouts);
  timeout = jiffies + SI_TIMEOUT_JIFFIES;
 }

do_mod_timer:
 if (smi_result != SI_SM_IDLE)
  smi_mod_timer(smi_info, timeout);
 else
  smi_info->timer_running = 0;
 spin_unlock_irqrestore(&(smi_info->si_lock), flags);
}
