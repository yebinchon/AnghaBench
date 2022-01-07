
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int si_lock; struct ipmi_smi_msg* waiting_msg; scalar_t__ run_to_completion; } ;
struct ipmi_smi_msg {int dummy; } ;


 int BUG_ON (struct ipmi_smi_msg*) ;
 int check_start_timer_thread (struct smi_info*) ;
 int debug_timestamp (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sender(void *send_info,
     struct ipmi_smi_msg *msg)
{
 struct smi_info *smi_info = send_info;
 unsigned long flags;

 debug_timestamp("Enqueue");

 if (smi_info->run_to_completion) {




  smi_info->waiting_msg = msg;
  return;
 }

 spin_lock_irqsave(&smi_info->si_lock, flags);







 BUG_ON(smi_info->waiting_msg);
 smi_info->waiting_msg = msg;
 check_start_timer_thread(smi_info);
 spin_unlock_irqrestore(&smi_info->si_lock, flags);
}
