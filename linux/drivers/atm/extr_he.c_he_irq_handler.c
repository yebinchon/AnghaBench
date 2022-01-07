
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct he_irq {int dummy; } ;
struct he_dev {int* irq_tailoffset; int global_lock; int tasklet; struct he_irq* irq_tail; struct he_irq* irq_head; scalar_t__ irq_base; } ;
typedef int irqreturn_t ;


 int HPRINTK (char*) ;
 int INT_CLEAR_A ;
 int INT_FIFO ;
 int IRQ0_BASE ;
 int IRQ_MASK ;
 int IRQ_NONE ;
 int IRQ_RETVAL (int) ;
 int he_readl (struct he_dev*,int ) ;
 int he_writel (struct he_dev*,int ,int ) ;
 int hprintk (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t
he_irq_handler(int irq, void *dev_id)
{
 unsigned long flags;
 struct he_dev *he_dev = (struct he_dev * )dev_id;
 int handled = 0;

 if (he_dev == ((void*)0))
  return IRQ_NONE;

 spin_lock_irqsave(&he_dev->global_lock, flags);

 he_dev->irq_tail = (struct he_irq *) (((unsigned long)he_dev->irq_base) |
      (*he_dev->irq_tailoffset << 2));

 if (he_dev->irq_tail == he_dev->irq_head) {
  HPRINTK("tailoffset not updated?\n");
  he_dev->irq_tail = (struct he_irq *) ((unsigned long)he_dev->irq_base |
   ((he_readl(he_dev, IRQ0_BASE) & IRQ_MASK) << 2));
  (void) he_readl(he_dev, INT_FIFO);
 }






 if (he_dev->irq_head != he_dev->irq_tail) {
  handled = 1;
  tasklet_schedule(&he_dev->tasklet);
  he_writel(he_dev, INT_CLEAR_A, INT_FIFO);
  (void) he_readl(he_dev, INT_FIFO);
 }
 spin_unlock_irqrestore(&he_dev->global_lock, flags);
 return IRQ_RETVAL(handled);

}
