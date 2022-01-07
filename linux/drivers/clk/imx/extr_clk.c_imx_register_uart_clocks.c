
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int clk_prepare_enable (struct clk*) ;
 scalar_t__ imx_keep_uart_clocks ;
 struct clk*** imx_uart_clocks ;

void imx_register_uart_clocks(struct clk ** const clks[])
{
 if (imx_keep_uart_clocks) {
  int i;

  imx_uart_clocks = clks;
  for (i = 0; imx_uart_clocks[i]; i++)
   clk_prepare_enable(*imx_uart_clocks[i]);
 }
}
