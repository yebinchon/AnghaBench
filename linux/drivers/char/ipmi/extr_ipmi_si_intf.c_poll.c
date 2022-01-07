
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int run_to_completion; int si_lock; } ;


 int smi_event_handler (struct smi_info*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void poll(void *send_info)
{
 struct smi_info *smi_info = send_info;
 unsigned long flags = 0;
 bool run_to_completion = smi_info->run_to_completion;





 udelay(10);
 if (!run_to_completion)
  spin_lock_irqsave(&smi_info->si_lock, flags);
 smi_event_handler(smi_info, 10);
 if (!run_to_completion)
  spin_unlock_irqrestore(&smi_info->si_lock, flags);
}
