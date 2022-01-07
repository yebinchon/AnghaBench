
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_triphase_data {int ph2; int ph1; int ph0; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 struct meson_clk_triphase_data* meson_clk_triphase_data (struct clk_regmap*) ;
 unsigned int meson_parm_read (int ,int *) ;
 int meson_parm_write (int ,int *,unsigned int) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static void meson_clk_triphase_sync(struct clk_hw *hw)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_clk_triphase_data *tph = meson_clk_triphase_data(clk);
 unsigned int val;


 val = meson_parm_read(clk->map, &tph->ph0);
 meson_parm_write(clk->map, &tph->ph1, val);
 meson_parm_write(clk->map, &tph->ph2, val);
}
