
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {scalar_t__ si_state; scalar_t__ thread; int * curr_msg; } ;


 scalar_t__ SI_NORMAL ;
 scalar_t__ SI_TIMEOUT_JIFFIES ;
 scalar_t__ jiffies ;
 int smi_event_handler (struct smi_info*,int ) ;
 int smi_mod_timer (struct smi_info*,scalar_t__) ;
 int start_next_msg (struct smi_info*) ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static void check_start_timer_thread(struct smi_info *smi_info)
{
 if (smi_info->si_state == SI_NORMAL && smi_info->curr_msg == ((void*)0)) {
  smi_mod_timer(smi_info, jiffies + SI_TIMEOUT_JIFFIES);

  if (smi_info->thread)
   wake_up_process(smi_info->thread);

  start_next_msg(smi_info);
  smi_event_handler(smi_info, 0);
 }
}
