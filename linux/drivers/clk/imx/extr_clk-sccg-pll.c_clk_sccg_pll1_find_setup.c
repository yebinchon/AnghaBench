
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct clk_sccg_pll_setup {scalar_t__ ref; } ;


 int EINVAL ;
 scalar_t__ PLL_REF_MAX_FREQ ;
 scalar_t__ PLL_REF_MIN_FREQ ;
 int clk_sccg_divr1_lookup (struct clk_sccg_pll_setup*,struct clk_sccg_pll_setup*) ;

__attribute__((used)) static int clk_sccg_pll1_find_setup(struct clk_sccg_pll_setup *setup,
     struct clk_sccg_pll_setup *temp_setup,
     uint64_t ref)
{

 int ret = -EINVAL;

 if (ref < PLL_REF_MIN_FREQ || ref > PLL_REF_MAX_FREQ)
  return ret;

 temp_setup->ref = ref;

 ret = clk_sccg_divr1_lookup(setup, temp_setup);

 return ret;
}
