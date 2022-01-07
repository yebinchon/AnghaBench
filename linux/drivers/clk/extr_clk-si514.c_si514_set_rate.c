
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_si514_muldiv {int dummy; } ;
struct clk_si514 {int regmap; } ;
struct clk_hw {int dummy; } ;


 int SI514_CONTROL_FCAL ;
 unsigned int SI514_CONTROL_OE ;
 int SI514_REG_CONTROL ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int ) ;
 int si514_calc_muldiv (struct clk_si514_muldiv*,unsigned long) ;
 int si514_enable_output (struct clk_si514*,int) ;
 int si514_set_muldiv (struct clk_si514*,struct clk_si514_muldiv*) ;
 struct clk_si514* to_clk_si514 (struct clk_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int si514_set_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long parent_rate)
{
 struct clk_si514 *data = to_clk_si514(hw);
 struct clk_si514_muldiv settings;
 unsigned int old_oe_state;
 int err;

 err = si514_calc_muldiv(&settings, rate);
 if (err)
  return err;

 err = regmap_read(data->regmap, SI514_REG_CONTROL, &old_oe_state);
 if (err)
  return err;

 si514_enable_output(data, 0);

 err = si514_set_muldiv(data, &settings);
 if (err < 0)
  return err;


 err = regmap_write(data->regmap, SI514_REG_CONTROL, SI514_CONTROL_FCAL);
 if (err < 0)
  return err;


 usleep_range(10000, 12000);

 if (old_oe_state & SI514_CONTROL_OE)
  si514_enable_output(data, 1);

 return err;
}
