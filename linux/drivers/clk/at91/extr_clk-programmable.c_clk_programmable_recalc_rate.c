
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_programmable_layout {scalar_t__ is_pres_direct; } ;
struct clk_programmable {int id; int regmap; struct clk_programmable_layout* layout; } ;
struct clk_hw {int dummy; } ;


 int AT91_PMC_PCKR (int ) ;
 unsigned long PROG_PRES (struct clk_programmable_layout const*,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_programmable* to_clk_programmable (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_programmable_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct clk_programmable *prog = to_clk_programmable(hw);
 const struct clk_programmable_layout *layout = prog->layout;
 unsigned int pckr;
 unsigned long rate;

 regmap_read(prog->regmap, AT91_PMC_PCKR(prog->id), &pckr);

 if (layout->is_pres_direct)
  rate = parent_rate / (PROG_PRES(layout, pckr) + 1);
 else
  rate = parent_rate >> PROG_PRES(layout, pckr);

 return rate;
}
