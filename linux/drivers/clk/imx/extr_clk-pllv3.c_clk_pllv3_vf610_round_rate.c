
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pllv3_vf610_mf {int dummy; } ;
struct clk_hw {int dummy; } ;


 long clk_pllv3_vf610_mf_to_rate (unsigned long,struct clk_pllv3_vf610_mf) ;
 struct clk_pllv3_vf610_mf clk_pllv3_vf610_rate_to_mf (unsigned long,unsigned long) ;

__attribute__((used)) static long clk_pllv3_vf610_round_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long *prate)
{
 struct clk_pllv3_vf610_mf mf = clk_pllv3_vf610_rate_to_mf(*prate, rate);

 return clk_pllv3_vf610_mf_to_rate(*prate, mf);
}
