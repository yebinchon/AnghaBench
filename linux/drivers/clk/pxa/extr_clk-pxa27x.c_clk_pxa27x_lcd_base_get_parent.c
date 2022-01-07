
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;


 int CCCR_CPDIS_BIT ;
 int CCSR ;
 int PXA_LCD_13Mhz ;
 int PXA_LCD_RUN ;
 unsigned long readl (int ) ;

__attribute__((used)) static u8 clk_pxa27x_lcd_base_get_parent(struct clk_hw *hw)
{
 unsigned int osc_forced;
 unsigned long ccsr = readl(CCSR);

 osc_forced = ccsr & (1 << CCCR_CPDIS_BIT);
 if (osc_forced)
  return PXA_LCD_13Mhz;
 else
  return PXA_LCD_RUN;
}
