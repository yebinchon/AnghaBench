
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_irq (scalar_t__) ;
 scalar_t__ fiq_start ;

void enable_fiq(int fiq)
{
 enable_irq(fiq + fiq_start);
}
