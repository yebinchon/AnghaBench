
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int timer_running; int si_timer; int last_timeout_jiffies; int timer_can_start; } ;


 int jiffies ;
 int mod_timer (int *,unsigned long) ;

__attribute__((used)) static void smi_mod_timer(struct smi_info *smi_info, unsigned long new_val)
{
 if (!smi_info->timer_can_start)
  return;
 smi_info->last_timeout_jiffies = jiffies;
 mod_timer(&smi_info->si_timer, new_val);
 smi_info->timer_running = 1;
}
