
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int shift; int width; } ;
struct TYPE_3__ {unsigned int shift; int width; int reg_off; } ;
struct meson_clk_cpu_dyndiv_data {TYPE_2__ dyn; TYPE_1__ div; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 int SETPMASK (int ,unsigned int) ;
 int divider_get_val (unsigned long,unsigned long,int *,int ,int ) ;
 struct meson_clk_cpu_dyndiv_data* meson_clk_cpu_dyndiv_data (struct clk_regmap*) ;
 int meson_parm_write (int ,TYPE_2__*,int) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static int meson_clk_cpu_dyndiv_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_clk_cpu_dyndiv_data *data = meson_clk_cpu_dyndiv_data(clk);
 unsigned int val;
 int ret;

 ret = divider_get_val(rate, parent_rate, ((void*)0), data->div.width, 0);
 if (ret < 0)
  return ret;

 val = (unsigned int)ret << data->div.shift;


 meson_parm_write(clk->map, &data->dyn, 1);


 return regmap_update_bits(clk->map, data->div.reg_off,
      SETPMASK(data->div.width, data->div.shift) |
      SETPMASK(data->dyn.width, data->dyn.shift),
      val);
}
