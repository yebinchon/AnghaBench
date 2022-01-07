
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;


 int MXC_PLL_DP_CTL_DPDCK0_2_EN ;
 long __clk_pllv2_recalc_rate (unsigned long,int ,int ,int ,int ) ;
 int __clk_pllv2_set_rate (unsigned long,unsigned long,int *,int *,int *) ;

__attribute__((used)) static long clk_pllv2_round_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long *prate)
{
 u32 dp_op, dp_mfd, dp_mfn;
 int ret;

 ret = __clk_pllv2_set_rate(rate, *prate, &dp_op, &dp_mfd, &dp_mfn);
 if (ret)
  return ret;

 return __clk_pllv2_recalc_rate(*prate, MXC_PLL_DP_CTL_DPDCK0_2_EN,
   dp_op, dp_mfd, dp_mfn);
}
