
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int clk_register_clkdev (struct clk*,char*,int *) ;
 struct clk* clk_register_fixed_rate (int *,char*,int *,int ,int ) ;

__attribute__((used)) static void amba_register_dummy_clk(void)
{
 static struct clk *amba_dummy_clk;


 if (amba_dummy_clk)
  return;

 amba_dummy_clk = clk_register_fixed_rate(((void*)0), "apb_pclk", ((void*)0), 0, 0);
 clk_register_clkdev(amba_dummy_clk, "apb_pclk", ((void*)0));
}
