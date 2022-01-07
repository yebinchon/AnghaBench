
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int irq_line; } ;


 int FPGA_PIC_IRQMASK (int) ;
 int SOCRATES_FPGA_IRQ_MASK ;
 TYPE_1__* fpga_irqs ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int socrates_fpga_pic_lock ;
 int socrates_fpga_pic_read (int ) ;
 int socrates_fpga_pic_write (int ,int) ;

__attribute__((used)) static void socrates_fpga_pic_unmask(struct irq_data *d)
{
 unsigned long flags;
 unsigned int hwirq = irqd_to_hwirq(d);
 int irq_line;
 u32 mask;

 irq_line = fpga_irqs[hwirq].irq_line;
 raw_spin_lock_irqsave(&socrates_fpga_pic_lock, flags);
 mask = socrates_fpga_pic_read(FPGA_PIC_IRQMASK(irq_line))
  & SOCRATES_FPGA_IRQ_MASK;
 mask |= (1 << hwirq);
 socrates_fpga_pic_write(FPGA_PIC_IRQMASK(irq_line), mask);
 raw_spin_unlock_irqrestore(&socrates_fpga_pic_lock, flags);
}
