
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int host_read_wait ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t random_interrupt(int irq, void *data)
{
 wake_up(&host_read_wait);

 return IRQ_HANDLED;
}
