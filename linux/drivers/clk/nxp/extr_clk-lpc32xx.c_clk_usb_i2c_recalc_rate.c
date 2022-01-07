
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 size_t LPC32XX_CLK_PERIPH ;
 int * clk ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long clk_usb_i2c_recalc_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 return clk_get_rate(clk[LPC32XX_CLK_PERIPH]);
}
