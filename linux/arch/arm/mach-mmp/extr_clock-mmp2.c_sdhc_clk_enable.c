
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct clk {int clk_rst; int enable_val; } ;


 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static void sdhc_clk_enable(struct clk *clk)
{
 uint32_t clk_rst;

 clk_rst = __raw_readl(clk->clk_rst);
 clk_rst |= clk->enable_val;
 __raw_writel(clk_rst, clk->clk_rst);
}
