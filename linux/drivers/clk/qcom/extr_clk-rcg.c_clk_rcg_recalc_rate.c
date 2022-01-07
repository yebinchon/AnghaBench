
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mn {scalar_t__ width; } ;
struct TYPE_2__ {scalar_t__ enable_reg; int regmap; } ;
struct clk_rcg {scalar_t__ ns_reg; scalar_t__ md_reg; TYPE_1__ clkr; struct mn mn; int p; } ;
struct clk_hw {int dummy; } ;


 unsigned long calc_rate (unsigned long,int ,int ,int ,int ) ;
 int md_to_m (struct mn*,int ) ;
 int ns_m_to_n (struct mn*,int ,int ) ;
 int ns_to_pre_div (int *,int ) ;
 int reg_to_mnctr_mode (struct mn*,int ) ;
 int regmap_read (int ,scalar_t__,int *) ;
 struct clk_rcg* to_clk_rcg (struct clk_hw*) ;

__attribute__((used)) static unsigned long
clk_rcg_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
{
 struct clk_rcg *rcg = to_clk_rcg(hw);
 u32 pre_div, m = 0, n = 0, ns, md, mode = 0;
 struct mn *mn = &rcg->mn;

 regmap_read(rcg->clkr.regmap, rcg->ns_reg, &ns);
 pre_div = ns_to_pre_div(&rcg->p, ns);

 if (rcg->mn.width) {
  regmap_read(rcg->clkr.regmap, rcg->md_reg, &md);
  m = md_to_m(mn, md);
  n = ns_m_to_n(mn, ns, m);

  if (rcg->clkr.enable_reg != rcg->ns_reg)
   regmap_read(rcg->clkr.regmap, rcg->clkr.enable_reg, &mode);
  else
   mode = ns;
  mode = reg_to_mnctr_mode(mn, mode);
 }

 return calc_rate(parent_rate, m, n, mode, pre_div);
}
