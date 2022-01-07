
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freq_tbl {int dummy; } ;
struct clk_rcg2 {int freq_tbl; } ;
struct clk_hw {int dummy; } ;
typedef enum freq_policy { ____Placeholder_freq_policy } freq_policy ;



 int EINVAL ;

 int clk_rcg2_configure (struct clk_rcg2*,struct freq_tbl const*) ;
 struct freq_tbl* qcom_find_freq (int ,unsigned long) ;
 struct freq_tbl* qcom_find_freq_floor (int ,unsigned long) ;
 struct clk_rcg2* to_clk_rcg2 (struct clk_hw*) ;

__attribute__((used)) static int __clk_rcg2_set_rate(struct clk_hw *hw, unsigned long rate,
          enum freq_policy policy)
{
 struct clk_rcg2 *rcg = to_clk_rcg2(hw);
 const struct freq_tbl *f;

 switch (policy) {
 case 128:
  f = qcom_find_freq_floor(rcg->freq_tbl, rate);
  break;
 case 129:
  f = qcom_find_freq(rcg->freq_tbl, rate);
  break;
 default:
  return -EINVAL;
 };

 if (!f)
  return -EINVAL;

 return clk_rcg2_configure(rcg, f);
}
