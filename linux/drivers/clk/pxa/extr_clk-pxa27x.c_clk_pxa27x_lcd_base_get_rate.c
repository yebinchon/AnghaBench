
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int CCCR ;
 int CCCR_CPDIS_BIT ;
 int CCCR_LCD_26_BIT ;
 int CCSR ;
 unsigned long CCSR_L_MASK ;
 unsigned long readl (int ) ;

__attribute__((used)) static unsigned long clk_pxa27x_lcd_base_get_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 unsigned int l, osc_forced;
 unsigned long ccsr = readl(CCSR);
 unsigned long cccr = readl(CCCR);

 l = ccsr & CCSR_L_MASK;
 osc_forced = ccsr & (1 << CCCR_CPDIS_BIT);
 if (osc_forced) {
  if (cccr & (1 << CCCR_LCD_26_BIT))
   return parent_rate * 2;
  else
   return parent_rate;
 }

 if (l <= 7)
  return parent_rate;
 if (l <= 16)
  return parent_rate / 2;
 return parent_rate / 4;
}
