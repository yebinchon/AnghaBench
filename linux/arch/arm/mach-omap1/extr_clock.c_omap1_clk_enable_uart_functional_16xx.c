
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_clk {int sysc_addr; } ;
struct clk {int dummy; } ;


 int omap1_clk_enable_generic (struct clk*) ;
 int omap_readb (int ) ;
 int omap_writeb (int,int ) ;

__attribute__((used)) static int omap1_clk_enable_uart_functional_16xx(struct clk *clk)
{
 int ret;
 struct uart_clk *uclk;

 ret = omap1_clk_enable_generic(clk);
 if (ret == 0) {

  uclk = (struct uart_clk *)clk;
  omap_writeb((omap_readb(uclk->sysc_addr) & ~0x10) | 8,
       uclk->sysc_addr);
 }

 return ret;
}
