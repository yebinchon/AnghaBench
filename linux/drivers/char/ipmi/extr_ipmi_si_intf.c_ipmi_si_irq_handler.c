
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ si_type; int (* outputb ) (TYPE_1__*,int ,int) ;} ;
struct smi_info {int si_lock; TYPE_1__ io; } ;
typedef int irqreturn_t ;


 int IPMI_BT_INTMASK_CLEAR_IRQ_BIT ;
 int IPMI_BT_INTMASK_ENABLE_IRQ_BIT ;
 int IPMI_BT_INTMASK_REG ;
 int IRQ_HANDLED ;
 scalar_t__ SI_BT ;
 int debug_timestamp (char*) ;
 int interrupts ;
 int smi_event_handler (struct smi_info*,int ) ;
 int smi_inc_stat (struct smi_info*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,int ,int) ;

irqreturn_t ipmi_si_irq_handler(int irq, void *data)
{
 struct smi_info *smi_info = data;
 unsigned long flags;

 if (smi_info->io.si_type == SI_BT)

  smi_info->io.outputb(&smi_info->io, IPMI_BT_INTMASK_REG,
         IPMI_BT_INTMASK_CLEAR_IRQ_BIT
         | IPMI_BT_INTMASK_ENABLE_IRQ_BIT);

 spin_lock_irqsave(&(smi_info->si_lock), flags);

 smi_inc_stat(smi_info, interrupts);

 debug_timestamp("Interrupt");

 smi_event_handler(smi_info, 0);
 spin_unlock_irqrestore(&(smi_info->si_lock), flags);
 return IRQ_HANDLED;
}
