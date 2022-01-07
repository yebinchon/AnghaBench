
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_4__ {int (* event_handler ) (TYPE_1__*) ;} ;


 int AT91_ST_ALMS ;
 int AT91_ST_CRTV ;
 int AT91_ST_PITS ;
 int AT91_ST_SR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WARN_ON_ONCE (int) ;
 TYPE_1__ clkevt ;
 int irqmask ;
 int irqs_disabled () ;
 int last_crtr ;
 int read_CRTR () ;
 int regmap_read (int ,int ,int*) ;
 int regmap_st ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int timer_latch ;

__attribute__((used)) static irqreturn_t at91rm9200_timer_interrupt(int irq, void *dev_id)
{
 u32 sr;

 regmap_read(regmap_st, AT91_ST_SR, &sr);
 sr &= irqmask;





 WARN_ON_ONCE(!irqs_disabled());


 if (sr & AT91_ST_ALMS) {
  clkevt.event_handler(&clkevt);
  return IRQ_HANDLED;
 }


 if (sr & AT91_ST_PITS) {
  u32 crtr = read_CRTR();

  while (((crtr - last_crtr) & AT91_ST_CRTV) >= timer_latch) {
   last_crtr += timer_latch;
   clkevt.event_handler(&clkevt);
  }
  return IRQ_HANDLED;
 }


 return IRQ_NONE;
}
