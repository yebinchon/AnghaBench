
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freq_tbl {long freq; int src; } ;
struct clk_hw {int dummy; } ;
struct clk_fepll {int freq_tbl; } ;


 long EINVAL ;
 struct clk_hw* clk_hw_get_parent_by_index (struct clk_hw*,int ) ;
 unsigned long clk_hw_get_rate (struct clk_hw*) ;
 struct freq_tbl* qcom_find_freq (int ,unsigned long) ;
 struct clk_fepll* to_clk_fepll (struct clk_hw*) ;

__attribute__((used)) static long clk_cpu_div_round_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long *p_rate)
{
 struct clk_fepll *pll = to_clk_fepll(hw);
 struct clk_hw *p_hw;
 const struct freq_tbl *f;

 f = qcom_find_freq(pll->freq_tbl, rate);
 if (!f)
  return -EINVAL;

 p_hw = clk_hw_get_parent_by_index(hw, f->src);
 *p_rate = clk_hw_get_rate(p_hw);

 return f->freq;
}
