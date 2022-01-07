
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int clk_rst; } ;


 int __raw_writel (int ,int ) ;

__attribute__((used)) static void apmu_clk_disable(struct clk *clk)
{
 __raw_writel(0, clk->clk_rst);
}
