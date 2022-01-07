
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_irq (scalar_t__) ;
 scalar_t__ fiq_start ;

void disable_fiq(int fiq)
{
 disable_irq(fiq + fiq_start);
}
