
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int OST_OIER ;
 int OST_OIER_E0 ;
 int OST_OSSR ;
 int OST_OSSR_M0 ;
 int readl (int ) ;
 int stub1 (struct clock_event_device*) ;
 int writel (int,int ) ;

__attribute__((used)) static irqreturn_t puv3_ost0_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *c = dev_id;


 writel(readl(OST_OIER) & ~OST_OIER_E0, OST_OIER);
 writel(readl(OST_OSSR) & ~OST_OSSR_M0, OST_OSSR);
 c->event_handler(c);

 return IRQ_HANDLED;
}
