
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 int ms_wait_completion ;

__attribute__((used)) static irqreturn_t ms_isr(int irq, void *dummy)
{
 complete(&ms_wait_completion);
 return IRQ_HANDLED;
}
