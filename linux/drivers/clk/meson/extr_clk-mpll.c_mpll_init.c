
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_mpll_data {int flags; int misc; int ssen; int sdm_en; scalar_t__ init_count; int init_regs; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 int CLK_MESON_MPLL_SPREAD_SPECTRUM ;
 scalar_t__ MESON_PARM_APPLICABLE (int *) ;
 struct meson_clk_mpll_data* meson_clk_mpll_data (struct clk_regmap*) ;
 int meson_parm_write (int ,int *,int) ;
 int regmap_multi_reg_write (int ,int ,scalar_t__) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static void mpll_init(struct clk_hw *hw)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_clk_mpll_data *mpll = meson_clk_mpll_data(clk);

 if (mpll->init_count)
  regmap_multi_reg_write(clk->map, mpll->init_regs,
           mpll->init_count);


 meson_parm_write(clk->map, &mpll->sdm_en, 1);


 if (MESON_PARM_APPLICABLE(&mpll->ssen)) {
  unsigned int ss =
   mpll->flags & CLK_MESON_MPLL_SPREAD_SPECTRUM ? 1 : 0;
  meson_parm_write(clk->map, &mpll->ssen, ss);
 }


 if (MESON_PARM_APPLICABLE(&mpll->misc))
  meson_parm_write(clk->map, &mpll->misc, 1);
}
