
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct clk_sccg_pll_setup {scalar_t__ fout; } ;
struct clk_sccg_pll {struct clk_sccg_pll_setup setup; } ;
struct clk_rate_request {scalar_t__ rate; scalar_t__ min_rate; scalar_t__ max_rate; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 int PLL_BYPASS1 ;
 int PLL_BYPASS2 ;
 int PLL_BYPASS_NONE ;
 scalar_t__ PLL_OUT_MAX_FREQ ;
 scalar_t__ PLL_OUT_MIN_FREQ ;
 scalar_t__ PLL_REF_MAX_FREQ ;
 scalar_t__ PLL_REF_MIN_FREQ ;
 scalar_t__ PLL_STAGE1_REF_MAX_FREQ ;
 scalar_t__ PLL_STAGE1_REF_MIN_FREQ ;
 int __clk_sccg_pll_determine_rate (struct clk_hw*,struct clk_rate_request*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 struct clk_sccg_pll* to_clk_sccg_pll (struct clk_hw*) ;

__attribute__((used)) static int clk_sccg_pll_determine_rate(struct clk_hw *hw,
           struct clk_rate_request *req)
{
 struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
 struct clk_sccg_pll_setup *setup = &pll->setup;
 uint64_t rate = req->rate;
 uint64_t min = req->min_rate;
 uint64_t max = req->max_rate;
 int ret = -EINVAL;

 if (rate < PLL_OUT_MIN_FREQ || rate > PLL_OUT_MAX_FREQ)
  return ret;

 ret = __clk_sccg_pll_determine_rate(hw, req, req->rate, req->rate,
      rate, PLL_BYPASS2);
 if (!ret)
  return ret;

 ret = __clk_sccg_pll_determine_rate(hw, req, PLL_STAGE1_REF_MIN_FREQ,
      PLL_STAGE1_REF_MAX_FREQ, rate,
      PLL_BYPASS1);
 if (!ret)
  return ret;

 ret = __clk_sccg_pll_determine_rate(hw, req, PLL_REF_MIN_FREQ,
      PLL_REF_MAX_FREQ, rate,
      PLL_BYPASS_NONE);
 if (!ret)
  return ret;

 if (setup->fout >= min && setup->fout <= max)
  ret = 0;

 return ret;
}
