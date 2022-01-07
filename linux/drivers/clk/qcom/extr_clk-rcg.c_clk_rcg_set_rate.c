
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freq_tbl {int dummy; } ;
struct clk_rcg {int freq_tbl; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 int __clk_rcg_set_rate (struct clk_rcg*,struct freq_tbl const*) ;
 struct freq_tbl* qcom_find_freq (int ,unsigned long) ;
 struct clk_rcg* to_clk_rcg (struct clk_hw*) ;

__attribute__((used)) static int clk_rcg_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct clk_rcg *rcg = to_clk_rcg(hw);
 const struct freq_tbl *f;

 f = qcom_find_freq(rcg->freq_tbl, rate);
 if (!f)
  return -EINVAL;

 return __clk_rcg_set_rate(rcg, f);
}
