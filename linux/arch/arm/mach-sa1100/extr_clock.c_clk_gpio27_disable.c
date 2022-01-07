
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int GAFR ;
 int GPDR ;
 int GPIO_32_768kHz ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void clk_gpio27_disable(struct clk_hw *hw)
{
 unsigned long flags;

 local_irq_save(flags);
 GPDR &= ~GPIO_32_768kHz;
 GAFR &= ~GPIO_32_768kHz;
 local_irq_restore(flags);
}
