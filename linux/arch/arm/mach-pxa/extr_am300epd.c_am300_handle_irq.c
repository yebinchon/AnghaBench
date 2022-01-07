
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct broadsheetfb_par {int waitq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t am300_handle_irq(int irq, void *dev_id)
{
 struct broadsheetfb_par *par = dev_id;

 wake_up(&par->waitq);
 return IRQ_HANDLED;
}
