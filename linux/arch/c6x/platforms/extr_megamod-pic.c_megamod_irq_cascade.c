
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct megamod_pic {TYPE_1__* regs; int irqhost; } ;
struct megamod_cascade_data {int index; struct megamod_pic* pic; } ;
struct irq_desc {int dummy; } ;
struct TYPE_2__ {int * evtclr; int * mevtflag; } ;


 int __ffs (int ) ;
 int generic_handle_irq (unsigned int) ;
 struct megamod_cascade_data* irq_desc_get_handler_data (struct irq_desc*) ;
 unsigned int irq_linear_revmap (int ,int) ;
 int soc_readl (int *) ;
 int soc_writel (int,int *) ;

__attribute__((used)) static void megamod_irq_cascade(struct irq_desc *desc)
{
 struct megamod_cascade_data *cascade;
 struct megamod_pic *pic;
 unsigned int irq;
 u32 events;
 int n, idx;

 cascade = irq_desc_get_handler_data(desc);

 pic = cascade->pic;
 idx = cascade->index;

 while ((events = soc_readl(&pic->regs->mevtflag[idx])) != 0) {
  n = __ffs(events);

  irq = irq_linear_revmap(pic->irqhost, idx * 32 + n);

  soc_writel(1 << n, &pic->regs->evtclr[idx]);

  generic_handle_irq(irq);
 }
}
