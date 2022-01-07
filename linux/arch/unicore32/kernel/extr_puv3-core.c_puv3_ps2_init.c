
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int PS2_CNT ;
 struct clk* clk_get (int *,char*) ;
 int clk_get_rate (struct clk*) ;
 int writel (int,int ) ;

void puv3_ps2_init(void)
{
 struct clk *bclk32;

 bclk32 = clk_get(((void*)0), "BUS32_CLK");
 writel(clk_get_rate(bclk32) / 200000, PS2_CNT);
}
