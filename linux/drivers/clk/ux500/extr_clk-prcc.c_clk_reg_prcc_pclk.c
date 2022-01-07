
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;
typedef int resource_size_t ;


 int clk_prcc_pclk_ops ;
 struct clk* clk_reg_prcc (char const*,char const*,int ,int ,unsigned long,int *) ;

struct clk *clk_reg_prcc_pclk(const char *name,
         const char *parent_name,
         resource_size_t phy_base,
         u32 cg_sel,
         unsigned long flags)
{
 return clk_reg_prcc(name, parent_name, phy_base, cg_sel, flags,
   &clk_prcc_pclk_ops);
}
