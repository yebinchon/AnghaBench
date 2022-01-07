
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mid_pwr {int dev; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ PM_ICS ;
 int PM_ICS_INT_STATUS (int) ;
 int PM_ICS_IP ;
 int dev_warn (int ,char*,int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mid_pwr_irq_handler(int irq, void *dev_id)
{
 struct mid_pwr *pwr = dev_id;
 u32 ics;

 ics = readl(pwr->regs + PM_ICS);
 if (!(ics & PM_ICS_IP))
  return IRQ_NONE;

 writel(ics | PM_ICS_IP, pwr->regs + PM_ICS);

 dev_warn(pwr->dev, "Unexpected IRQ: %#x\n", PM_ICS_INT_STATUS(ics));
 return IRQ_HANDLED;
}
