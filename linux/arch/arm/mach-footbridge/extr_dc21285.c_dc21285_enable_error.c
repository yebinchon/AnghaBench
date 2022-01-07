
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int IRQ_PCI_PERR ;
 int IRQ_PCI_SERR ;
 int del_timer (struct timer_list*) ;
 int enable_irq (int ) ;
 struct timer_list perr_timer ;
 struct timer_list serr_timer ;

__attribute__((used)) static void dc21285_enable_error(struct timer_list *timer)
{
 del_timer(timer);

 if (timer == &serr_timer)
  enable_irq(IRQ_PCI_SERR);
 else if (timer == &perr_timer)
  enable_irq(IRQ_PCI_PERR);
}
