
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_programmable_layout {int pres_mask; int pres_shift; scalar_t__ is_pres_direct; } ;
struct clk_programmable {int id; int regmap; struct clk_programmable_layout* layout; } ;
struct clk_hw {int dummy; } ;


 int AT91_PMC_PCKR (int ) ;
 int EINVAL ;
 int fls (unsigned long) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct clk_programmable* to_clk_programmable (struct clk_hw*) ;

__attribute__((used)) static int clk_programmable_set_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long parent_rate)
{
 struct clk_programmable *prog = to_clk_programmable(hw);
 const struct clk_programmable_layout *layout = prog->layout;
 unsigned long div = parent_rate / rate;
 int shift = 0;

 if (!div)
  return -EINVAL;

 if (layout->is_pres_direct) {
  shift = div - 1;

  if (shift > layout->pres_mask)
   return -EINVAL;
 } else {
  shift = fls(div) - 1;

  if (div != (1 << shift))
   return -EINVAL;

  if (shift >= layout->pres_mask)
   return -EINVAL;
 }

 regmap_update_bits(prog->regmap, AT91_PMC_PCKR(prog->id),
      layout->pres_mask << layout->pres_shift,
      shift << layout->pres_shift);

 return 0;
}
