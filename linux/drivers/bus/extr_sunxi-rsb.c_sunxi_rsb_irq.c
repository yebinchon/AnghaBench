
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_rsb {int status; int complete; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ RSB_INTS ;
 int RSB_INTS_LOAD_BSY ;
 int RSB_INTS_TRANS_ERR ;
 int RSB_INTS_TRANS_OVER ;
 int complete (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t sunxi_rsb_irq(int irq, void *dev_id)
{
 struct sunxi_rsb *rsb = dev_id;
 u32 status;

 status = readl(rsb->regs + RSB_INTS);
 rsb->status = status;


 status &= (RSB_INTS_LOAD_BSY | RSB_INTS_TRANS_ERR |
     RSB_INTS_TRANS_OVER);
 writel(status, rsb->regs + RSB_INTS);

 complete(&rsb->complete);

 return IRQ_HANDLED;
}
