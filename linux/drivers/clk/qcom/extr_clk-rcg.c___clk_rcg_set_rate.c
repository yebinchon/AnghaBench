
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mn {int mnctr_reset_bit; scalar_t__ width; scalar_t__ reset_in_cc; } ;
struct freq_tbl {scalar_t__ pre_div; int n; int m; } ;
struct TYPE_2__ {unsigned int enable_reg; int regmap; } ;
struct clk_rcg {unsigned int ns_reg; unsigned int md_reg; TYPE_1__ clkr; int p; struct mn mn; } ;


 int BIT (int ) ;
 int mn_to_md (struct mn*,int ,int ,int ) ;
 int mn_to_ns (struct mn*,int ,int ,int ) ;
 int mn_to_reg (struct mn*,int ,int ,int ) ;
 int pre_div_to_ns (int *,scalar_t__,int ) ;
 int regmap_read (int ,unsigned int,int *) ;
 int regmap_update_bits (int ,unsigned int,int ,int ) ;
 int regmap_write (int ,unsigned int,int ) ;

__attribute__((used)) static int __clk_rcg_set_rate(struct clk_rcg *rcg, const struct freq_tbl *f)
{
 u32 ns, md, ctl;
 struct mn *mn = &rcg->mn;
 u32 mask = 0;
 unsigned int reset_reg;

 if (rcg->mn.reset_in_cc)
  reset_reg = rcg->clkr.enable_reg;
 else
  reset_reg = rcg->ns_reg;

 if (rcg->mn.width) {
  mask = BIT(mn->mnctr_reset_bit);
  regmap_update_bits(rcg->clkr.regmap, reset_reg, mask, mask);

  regmap_read(rcg->clkr.regmap, rcg->md_reg, &md);
  md = mn_to_md(mn, f->m, f->n, md);
  regmap_write(rcg->clkr.regmap, rcg->md_reg, md);

  regmap_read(rcg->clkr.regmap, rcg->ns_reg, &ns);

  if (rcg->clkr.enable_reg != rcg->ns_reg) {
   regmap_read(rcg->clkr.regmap, rcg->clkr.enable_reg, &ctl);
   ctl = mn_to_reg(mn, f->m, f->n, ctl);
   regmap_write(rcg->clkr.regmap, rcg->clkr.enable_reg, ctl);
  } else {
   ns = mn_to_reg(mn, f->m, f->n, ns);
  }
  ns = mn_to_ns(mn, f->m, f->n, ns);
 } else {
  regmap_read(rcg->clkr.regmap, rcg->ns_reg, &ns);
 }

 ns = pre_div_to_ns(&rcg->p, f->pre_div - 1, ns);
 regmap_write(rcg->clkr.regmap, rcg->ns_reg, ns);

 regmap_update_bits(rcg->clkr.regmap, reset_reg, mask, 0);

 return 0;
}
