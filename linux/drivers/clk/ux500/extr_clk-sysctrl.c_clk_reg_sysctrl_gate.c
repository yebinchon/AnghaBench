
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct device {int dummy; } ;
struct clk {int dummy; } ;


 struct clk* clk_reg_sysctrl (struct device*,char const*,char const**,int,int *,int*,int*,int ,unsigned long,unsigned long,int *) ;
 int clk_sysctrl_gate_ops ;

struct clk *clk_reg_sysctrl_gate(struct device *dev,
    const char *name,
    const char *parent_name,
    u16 reg_sel,
    u8 reg_mask,
    u8 reg_bits,
    unsigned long enable_delay_us,
    unsigned long flags)
{
 const char **parent_names = (parent_name ? &parent_name : ((void*)0));
 u8 num_parents = (parent_name ? 1 : 0);

 return clk_reg_sysctrl(dev, name, parent_names, num_parents,
   &reg_sel, &reg_mask, &reg_bits, 0, enable_delay_us,
   flags, &clk_sysctrl_gate_ops);
}
