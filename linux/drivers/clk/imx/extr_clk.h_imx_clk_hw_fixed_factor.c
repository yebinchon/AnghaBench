
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int CLK_SET_RATE_PARENT ;
 struct clk_hw* clk_hw_register_fixed_factor (int *,char const*,char const*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static inline struct clk_hw *imx_clk_hw_fixed_factor(const char *name,
  const char *parent, unsigned int mult, unsigned int div)
{
 return clk_hw_register_fixed_factor(((void*)0), name, parent,
   CLK_SET_RATE_PARENT, mult, div);
}
