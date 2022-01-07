
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int si_lock; int need_watch; } ;


 int atomic_set (int *,int) ;
 int check_start_timer_thread (struct smi_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void set_need_watch(void *send_info, unsigned int watch_mask)
{
 struct smi_info *smi_info = send_info;
 unsigned long flags;
 int enable;

 enable = !!watch_mask;

 atomic_set(&smi_info->need_watch, enable);
 spin_lock_irqsave(&smi_info->si_lock, flags);
 check_start_timer_thread(smi_info);
 spin_unlock_irqrestore(&smi_info->si_lock, flags);
}
