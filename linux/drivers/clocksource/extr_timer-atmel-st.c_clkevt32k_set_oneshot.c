
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int AT91_ST_ALMS ;
 int AT91_ST_IER ;
 int AT91_ST_RTAR ;
 int clkdev32k_disable_and_flush_irq () ;
 int irqmask ;
 int last_crtr ;
 int regmap_st ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int clkevt32k_set_oneshot(struct clock_event_device *dev)
{
 clkdev32k_disable_and_flush_irq();





 irqmask = AT91_ST_ALMS;
 regmap_write(regmap_st, AT91_ST_RTAR, last_crtr);
 regmap_write(regmap_st, AT91_ST_IER, irqmask);
 return 0;
}
