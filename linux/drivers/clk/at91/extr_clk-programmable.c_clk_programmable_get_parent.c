
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_programmable_layout {unsigned int css_mask; scalar_t__ have_slck_mck; } ;
struct clk_programmable {int id; int regmap; struct clk_programmable_layout* layout; } ;
struct clk_hw {int dummy; } ;


 unsigned int AT91_PMC_CSSMCK_MCK ;
 int AT91_PMC_PCKR (int ) ;
 int PROG_MAX_RM9200_CSS ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_programmable* to_clk_programmable (struct clk_hw*) ;

__attribute__((used)) static u8 clk_programmable_get_parent(struct clk_hw *hw)
{
 struct clk_programmable *prog = to_clk_programmable(hw);
 const struct clk_programmable_layout *layout = prog->layout;
 unsigned int pckr;
 u8 ret;

 regmap_read(prog->regmap, AT91_PMC_PCKR(prog->id), &pckr);

 ret = pckr & layout->css_mask;

 if (layout->have_slck_mck && (pckr & AT91_PMC_CSSMCK_MCK) && !ret)
  ret = PROG_MAX_RM9200_CSS + 1;

 return ret;
}
