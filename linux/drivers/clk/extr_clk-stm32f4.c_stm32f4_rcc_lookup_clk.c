
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int * args; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 struct clk_hw* ERR_PTR (int ) ;
 struct clk_hw** clks ;
 int stm32f4_rcc_lookup_clk_idx (int ,int ) ;

__attribute__((used)) static struct clk_hw *
stm32f4_rcc_lookup_clk(struct of_phandle_args *clkspec, void *data)
{
 int i = stm32f4_rcc_lookup_clk_idx(clkspec->args[0], clkspec->args[1]);

 if (i < 0)
  return ERR_PTR(-EINVAL);

 return clks[i];
}
