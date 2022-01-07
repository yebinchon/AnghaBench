
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int rt_queue; int lx_queue; } ;


 int IRQ_HANDLED ;
 int MIPS_CPU_RTLX_IRQ ;
 int RTLX_CHANNELS ;
 TYPE_1__* channel_wqs ;
 unsigned int dvpe () ;
 int evpe (unsigned int) ;
 int irq_enable_hazard () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int set_c0_status (int) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t rtlx_interrupt(int irq, void *dev_id)
{
 unsigned int vpeflags;
 unsigned long flags;
 int i;

 local_irq_save(flags);
 vpeflags = dvpe();
 set_c0_status(0x100 << MIPS_CPU_RTLX_IRQ);
 irq_enable_hazard();
 evpe(vpeflags);
 local_irq_restore(flags);

 for (i = 0; i < RTLX_CHANNELS; i++) {
  wake_up(&channel_wqs[i].lx_queue);
  wake_up(&channel_wqs[i].rt_queue);
 }

 return IRQ_HANDLED;
}
