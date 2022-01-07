
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct clk_programmable_layout {unsigned int css_mask; scalar_t__ have_slck_mck; } ;
struct clk_programmable {int id; int regmap; struct clk_programmable_layout* layout; } ;
struct clk_hw {int dummy; } ;


 unsigned int AT91_PMC_CSSMCK_MCK ;
 int AT91_PMC_PCKR (int ) ;
 int EINVAL ;
 unsigned int PROG_MAX_RM9200_CSS ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct clk_programmable* to_clk_programmable (struct clk_hw*) ;

__attribute__((used)) static int clk_programmable_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_programmable *prog = to_clk_programmable(hw);
 const struct clk_programmable_layout *layout = prog->layout;
 unsigned int mask = layout->css_mask;
 unsigned int pckr = index;

 if (layout->have_slck_mck)
  mask |= AT91_PMC_CSSMCK_MCK;

 if (index > layout->css_mask) {
  if (index > PROG_MAX_RM9200_CSS && !layout->have_slck_mck)
   return -EINVAL;

  pckr |= AT91_PMC_CSSMCK_MCK;
 }

 regmap_update_bits(prog->regmap, AT91_PMC_PCKR(prog->id), mask, pckr);

 return 0;
}
