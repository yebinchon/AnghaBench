
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_clk_ll_ops {int clk_rmw; int clk_writel; int clk_readl; } ;


 int EBUSY ;
 int clk_memmap_readl ;
 int clk_memmap_rmw ;
 int clk_memmap_writel ;
 int pr_err (char*) ;
 struct ti_clk_ll_ops* ti_clk_ll_ops ;

int ti_clk_setup_ll_ops(struct ti_clk_ll_ops *ops)
{
 if (ti_clk_ll_ops) {
  pr_err("Attempt to register ll_ops multiple times.\n");
  return -EBUSY;
 }

 ti_clk_ll_ops = ops;
 ops->clk_readl = clk_memmap_readl;
 ops->clk_writel = clk_memmap_writel;
 ops->clk_rmw = clk_memmap_rmw;

 return 0;
}
