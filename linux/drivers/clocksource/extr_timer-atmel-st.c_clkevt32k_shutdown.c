
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int AT91_ST_IER ;
 int clkdev32k_disable_and_flush_irq () ;
 scalar_t__ irqmask ;
 int regmap_st ;
 int regmap_write (int ,int ,scalar_t__) ;

__attribute__((used)) static int clkevt32k_shutdown(struct clock_event_device *evt)
{
 clkdev32k_disable_and_flush_irq();
 irqmask = 0;
 regmap_write(regmap_st, AT91_ST_IER, irqmask);
 return 0;
}
