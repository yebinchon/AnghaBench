
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freq_tbl {int dummy; } ;
struct clk_rcg2 {int freq_tbl; } ;
struct clk_hw {int clk; } ;


 int EINVAL ;
 int __clk_is_enabled (int ) ;
 int __clk_rcg2_configure (struct clk_rcg2*,struct freq_tbl const*) ;
 int clk_rcg2_shared_force_enable_clear (struct clk_hw*,struct freq_tbl const*) ;
 struct freq_tbl* qcom_find_freq (int ,unsigned long) ;
 struct clk_rcg2* to_clk_rcg2 (struct clk_hw*) ;

__attribute__((used)) static int clk_rcg2_shared_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct clk_rcg2 *rcg = to_clk_rcg2(hw);
 const struct freq_tbl *f;

 f = qcom_find_freq(rcg->freq_tbl, rate);
 if (!f)
  return -EINVAL;





 if (!__clk_is_enabled(hw->clk))
  return __clk_rcg2_configure(rcg, f);

 return clk_rcg2_shared_force_enable_clear(hw, f);
}
