
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; } ;
struct meson_clk_phase_data {TYPE_1__ ph; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 unsigned int meson_clk_degrees_to_val (int,int ) ;
 struct meson_clk_phase_data* meson_clk_phase_data (struct clk_regmap*) ;
 int meson_parm_write (int ,TYPE_1__*,unsigned int) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static int meson_clk_phase_set_phase(struct clk_hw *hw, int degrees)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_clk_phase_data *phase = meson_clk_phase_data(clk);
 unsigned int val;

 val = meson_clk_degrees_to_val(degrees, phase->ph.width);
 meson_parm_write(clk->map, &phase->ph, val);

 return 0;
}
