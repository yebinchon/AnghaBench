
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct freq_tbl {int src; scalar_t__ pre_div; int member_0; } ;
struct TYPE_6__ {TYPE_2__* parent_map; } ;
struct TYPE_4__ {int regmap; } ;
struct clk_rcg {TYPE_3__ s; int p; int ns_reg; TYPE_1__ clkr; } ;
struct clk_hw {int dummy; } ;
struct TYPE_5__ {scalar_t__ cfg; int src; } ;


 int EINVAL ;
 int __clk_rcg_set_rate (struct clk_rcg*,struct freq_tbl*) ;
 int clk_hw_get_num_parents (struct clk_hw*) ;
 scalar_t__ ns_to_pre_div (int *,scalar_t__) ;
 scalar_t__ ns_to_src (TYPE_3__*,scalar_t__) ;
 int regmap_read (int ,int ,scalar_t__*) ;
 struct clk_rcg* to_clk_rcg (struct clk_hw*) ;

__attribute__((used)) static int clk_rcg_bypass2_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct clk_rcg *rcg = to_clk_rcg(hw);
 struct freq_tbl f = { 0 };
 u32 ns, src;
 int i, ret, num_parents = clk_hw_get_num_parents(hw);

 ret = regmap_read(rcg->clkr.regmap, rcg->ns_reg, &ns);
 if (ret)
  return ret;

 src = ns_to_src(&rcg->s, ns);
 f.pre_div = ns_to_pre_div(&rcg->p, ns) + 1;

 for (i = 0; i < num_parents; i++) {
  if (src == rcg->s.parent_map[i].cfg) {
   f.src = rcg->s.parent_map[i].src;
   return __clk_rcg_set_rate(rcg, &f);
  }
 }

 return -EINVAL;
}
