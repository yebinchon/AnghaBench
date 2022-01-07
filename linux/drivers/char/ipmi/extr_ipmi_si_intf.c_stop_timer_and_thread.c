
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int timer_can_start; int si_timer; int * thread; } ;


 int del_timer_sync (int *) ;
 int kthread_stop (int *) ;

__attribute__((used)) static inline void stop_timer_and_thread(struct smi_info *smi_info)
{
 if (smi_info->thread != ((void*)0)) {
  kthread_stop(smi_info->thread);
  smi_info->thread = ((void*)0);
 }

 smi_info->timer_can_start = 0;
 del_timer_sync(&smi_info->si_timer);
}
