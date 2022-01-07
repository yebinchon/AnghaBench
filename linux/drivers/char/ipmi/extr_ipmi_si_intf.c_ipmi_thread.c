
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_1; int member_0; } ;
struct smi_info {int need_watch; scalar_t__ in_maintenance_mode; int si_lock; int timer_running; } ;
typedef enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;


 int MAX_NICE ;
 int SI_SM_CALL_WITHOUT_DELAY ;
 int SI_SM_CALL_WITH_DELAY ;
 int SI_SM_IDLE ;
 scalar_t__ SI_TIMEOUT_JIFFIES ;
 int TASK_INTERRUPTIBLE ;
 int __set_current_state (int ) ;
 scalar_t__ atomic_read (int *) ;
 int current ;
 int ipmi_si_set_not_busy (struct timespec*) ;
 int ipmi_thread_busy_wait (int,struct smi_info*,struct timespec*) ;
 scalar_t__ jiffies ;
 int kthread_should_stop () ;
 int schedule () ;
 int schedule_timeout_interruptible (int) ;
 int set_user_nice (int ,int ) ;
 int smi_event_handler (struct smi_info*,int ) ;
 int smi_mod_timer (struct smi_info*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ipmi_thread(void *data)
{
 struct smi_info *smi_info = data;
 unsigned long flags;
 enum si_sm_result smi_result;
 struct timespec busy_until = { 0, 0 };

 ipmi_si_set_not_busy(&busy_until);
 set_user_nice(current, MAX_NICE);
 while (!kthread_should_stop()) {
  int busy_wait;

  spin_lock_irqsave(&(smi_info->si_lock), flags);
  smi_result = smi_event_handler(smi_info, 0);
  if (smi_result != SI_SM_IDLE && !smi_info->timer_running)
   smi_mod_timer(smi_info, jiffies + SI_TIMEOUT_JIFFIES);

  spin_unlock_irqrestore(&(smi_info->si_lock), flags);
  busy_wait = ipmi_thread_busy_wait(smi_result, smi_info,
        &busy_until);
  if (smi_result == SI_SM_CALL_WITHOUT_DELAY) {
   ;
  } else if (smi_result == SI_SM_CALL_WITH_DELAY && busy_wait) {






   if (smi_info->in_maintenance_mode)
    schedule();
   else
    usleep_range(100, 200);
  } else if (smi_result == SI_SM_IDLE) {
   if (atomic_read(&smi_info->need_watch)) {
    schedule_timeout_interruptible(100);
   } else {

    __set_current_state(TASK_INTERRUPTIBLE);
    schedule();
   }
  } else {
   schedule_timeout_interruptible(1);
  }
 }
 return 0;
}
