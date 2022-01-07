
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int octeon_icache_flush () ;

__attribute__((used)) static irqreturn_t octeon_78xx_icache_flush_interrupt(int irq, void *dev_id)
{
 octeon_icache_flush();
 return IRQ_HANDLED;
}
