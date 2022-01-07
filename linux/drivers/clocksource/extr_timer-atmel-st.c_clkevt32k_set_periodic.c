
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int AT91_ST_IER ;
 int AT91_ST_PIMR ;
 int AT91_ST_PITS ;
 int clkdev32k_disable_and_flush_irq () ;
 int irqmask ;
 int regmap_st ;
 int regmap_write (int ,int ,int ) ;
 int timer_latch ;

__attribute__((used)) static int clkevt32k_set_periodic(struct clock_event_device *dev)
{
 clkdev32k_disable_and_flush_irq();


 irqmask = AT91_ST_PITS;
 regmap_write(regmap_st, AT91_ST_PIMR, timer_latch);
 regmap_write(regmap_st, AT91_ST_IER, irqmask);
 return 0;
}
