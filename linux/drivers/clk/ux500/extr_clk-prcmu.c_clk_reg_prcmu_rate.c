
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk {int dummy; } ;


 int clk_prcmu_rate_ops ;
 struct clk* clk_reg_prcmu (char const*,char const*,int ,int ,unsigned long,int *) ;

struct clk *clk_reg_prcmu_rate(const char *name,
          const char *parent_name,
          u8 cg_sel,
          unsigned long flags)
{
 return clk_reg_prcmu(name, parent_name, cg_sel, 0, flags,
   &clk_prcmu_rate_ops);
}
