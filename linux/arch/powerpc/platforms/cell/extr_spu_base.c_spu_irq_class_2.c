
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int class2_intr; } ;
struct spu {int register_lock; TYPE_1__ stats; int (* wbox_callback ) (struct spu*) ;int (* mfc_callback ) (struct spu*) ;int (* stop_callback ) (struct spu*,int) ;int (* ibox_callback ) (struct spu*) ;} ;
typedef int irqreturn_t ;


 unsigned long CLASS2_MAILBOX_INTR ;
 unsigned long CLASS2_MAILBOX_THRESHOLD_INTR ;
 unsigned long CLASS2_SPU_DMA_TAG_GROUP_COMPLETE_INTR ;
 unsigned long CLASS2_SPU_HALT_INTR ;
 unsigned long CLASS2_SPU_STOP_INTR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int pr_debug (char*,int,unsigned long,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int spu_int_mask_and (struct spu*,int,unsigned long) ;
 unsigned long spu_int_mask_get (struct spu*,int) ;
 int spu_int_stat_clear (struct spu*,int,unsigned long) ;
 unsigned long spu_int_stat_get (struct spu*,int) ;
 int stub1 (struct spu*) ;
 int stub2 (struct spu*,int) ;
 int stub3 (struct spu*,int) ;
 int stub4 (struct spu*) ;
 int stub5 (struct spu*) ;

__attribute__((used)) static irqreturn_t
spu_irq_class_2(int irq, void *data)
{
 struct spu *spu;
 unsigned long stat;
 unsigned long mask;
 const int mailbox_intrs =
  CLASS2_MAILBOX_THRESHOLD_INTR | CLASS2_MAILBOX_INTR;

 spu = data;
 spin_lock(&spu->register_lock);
 stat = spu_int_stat_get(spu, 2);
 mask = spu_int_mask_get(spu, 2);

 stat &= mask;


 if (stat & mailbox_intrs)
  spu_int_mask_and(spu, 2, ~(stat & mailbox_intrs));

 spu_int_stat_clear(spu, 2, stat);

 pr_debug("class 2 interrupt %d, %lx, %lx\n", irq, stat, mask);

 if (stat & CLASS2_MAILBOX_INTR)
  spu->ibox_callback(spu);

 if (stat & CLASS2_SPU_STOP_INTR)
  spu->stop_callback(spu, 2);

 if (stat & CLASS2_SPU_HALT_INTR)
  spu->stop_callback(spu, 2);

 if (stat & CLASS2_SPU_DMA_TAG_GROUP_COMPLETE_INTR)
  spu->mfc_callback(spu);

 if (stat & CLASS2_MAILBOX_THRESHOLD_INTR)
  spu->wbox_callback(spu);

 spu->stats.class2_intr++;

 spin_unlock(&spu->register_lock);

 return stat ? IRQ_HANDLED : IRQ_NONE;
}
