
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct freq_tbl {int pre_div; int src; int member_0; } ;
struct TYPE_8__ {TYPE_3__* parent_map; } ;
struct TYPE_6__ {int regmap; } ;
struct TYPE_5__ {int pre_div_width; } ;
struct clk_rcg {TYPE_4__ s; int ns_reg; TYPE_2__ clkr; TYPE_1__ p; } ;
struct clk_hw {int dummy; } ;
struct TYPE_7__ {scalar_t__ cfg; int src; } ;


 int BIT (int ) ;
 int EINVAL ;
 int __clk_rcg_set_rate (struct clk_rcg*,struct freq_tbl*) ;
 int clk_hw_get_num_parents (struct clk_hw*) ;
 scalar_t__ ns_to_src (TYPE_4__*,scalar_t__) ;
 int regmap_read (int ,int ,scalar_t__*) ;
 struct clk_rcg* to_clk_rcg (struct clk_hw*) ;

__attribute__((used)) static int clk_rcg_esc_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct clk_rcg *rcg = to_clk_rcg(hw);
 struct freq_tbl f = { 0 };
 int pre_div_max = BIT(rcg->p.pre_div_width);
 int div;
 u32 ns;
 int i, ret, num_parents = clk_hw_get_num_parents(hw);

 if (rate == 0)
  return -EINVAL;

 ret = regmap_read(rcg->clkr.regmap, rcg->ns_reg, &ns);
 if (ret)
  return ret;

 ns = ns_to_src(&rcg->s, ns);

 for (i = 0; i < num_parents; i++) {
  if (ns == rcg->s.parent_map[i].cfg) {
   f.src = rcg->s.parent_map[i].src;
   break;
  }
 }

 div = parent_rate / rate;

 if (div >= 1 && div <= pre_div_max) {
  f.pre_div = div;
  return __clk_rcg_set_rate(rcg, &f);
 }

 return -EINVAL;
}
