
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smi_info {int si_sm; TYPE_1__* handlers; scalar_t__ thread; } ;
struct TYPE_2__ {int (* start_transaction ) (int ,unsigned char*,unsigned int) ;} ;


 scalar_t__ SI_TIMEOUT_JIFFIES ;
 scalar_t__ jiffies ;
 int smi_mod_timer (struct smi_info*,scalar_t__) ;
 int stub1 (int ,unsigned char*,unsigned int) ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static void start_new_msg(struct smi_info *smi_info, unsigned char *msg,
     unsigned int size)
{
 smi_mod_timer(smi_info, jiffies + SI_TIMEOUT_JIFFIES);

 if (smi_info->thread)
  wake_up_process(smi_info->thread);

 smi_info->handlers->start_transaction(smi_info->si_sm, msg, size);
}
