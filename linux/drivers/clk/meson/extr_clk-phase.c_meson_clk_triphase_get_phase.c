
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; } ;
struct meson_clk_triphase_data {TYPE_1__ ph0; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 int meson_clk_degrees_from_val (unsigned int,int ) ;
 struct meson_clk_triphase_data* meson_clk_triphase_data (struct clk_regmap*) ;
 unsigned int meson_parm_read (int ,TYPE_1__*) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static int meson_clk_triphase_get_phase(struct clk_hw *hw)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_clk_triphase_data *tph = meson_clk_triphase_data(clk);
 unsigned int val;


 val = meson_parm_read(clk->map, &tph->ph0);

 return meson_clk_degrees_from_val(val, tph->ph0.width);
}
