
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int CLK_SET_RATE_PARENT ;
 struct clk* clk_register_fixed_factor (int *,char const*,char const*,int,int,int) ;

__attribute__((used)) static inline struct clk *mpc512x_clk_factor(
 const char *name, const char *parent_name,
 int mul, int div)
{
 int clkflags;

 clkflags = CLK_SET_RATE_PARENT;
 return clk_register_fixed_factor(((void*)0), name, parent_name, clkflags,
      mul, div);
}
