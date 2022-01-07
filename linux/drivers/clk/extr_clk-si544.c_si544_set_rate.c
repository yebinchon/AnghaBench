
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_si544_muldiv {int delta_m; } ;
struct clk_si544 {int regmap; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 int SI544_CONTROL_MS_ICAL2 ;
 unsigned int SI544_OE_STATE_ODC_OE ;
 int SI544_REG_CONTROL ;
 int SI544_REG_FCAL_OVR ;
 int SI544_REG_OE_STATE ;
 long abs (long) ;
 int is_valid_frequency (struct clk_si544*,unsigned long) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int ) ;
 unsigned long si544_calc_center_rate (struct clk_si544_muldiv*) ;
 int si544_calc_delta (long,long) ;
 int si544_calc_muldiv (struct clk_si544_muldiv*,unsigned long) ;
 int si544_enable_output (struct clk_si544*,int) ;
 int si544_get_muldiv (struct clk_si544*,struct clk_si544_muldiv*) ;
 long si544_max_delta (unsigned long) ;
 int si544_set_delta_m (struct clk_si544*,int ) ;
 int si544_set_muldiv (struct clk_si544*,struct clk_si544_muldiv*) ;
 struct clk_si544* to_clk_si544 (struct clk_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int si544_set_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long parent_rate)
{
 struct clk_si544 *data = to_clk_si544(hw);
 struct clk_si544_muldiv settings;
 unsigned long center;
 long max_delta;
 long delta;
 unsigned int old_oe_state;
 int err;

 if (!is_valid_frequency(data, rate))
  return -EINVAL;


 err = si544_get_muldiv(data, &settings);
 if (err)
  return err;

 center = si544_calc_center_rate(&settings);
 max_delta = si544_max_delta(center);
 delta = rate - center;

 if (abs(delta) <= max_delta)
  return si544_set_delta_m(data,
      si544_calc_delta(delta, max_delta));


 err = si544_calc_muldiv(&settings, rate);
 if (err)
  return err;

 err = regmap_read(data->regmap, SI544_REG_OE_STATE, &old_oe_state);
 if (err)
  return err;

 si544_enable_output(data, 0);


 err = regmap_write(data->regmap, SI544_REG_FCAL_OVR, 0);
 if (err < 0)
  return err;

 err = si544_set_delta_m(data, settings.delta_m);
 if (err < 0)
  return err;

 err = si544_set_muldiv(data, &settings);
 if (err < 0)
  return err;


 err = regmap_write(data->regmap, SI544_REG_CONTROL,
      SI544_CONTROL_MS_ICAL2);
 if (err < 0)
  return err;


 usleep_range(10000, 12000);

 if (old_oe_state & SI544_OE_STATE_ODC_OE)
  si544_enable_output(data, 1);

 return err;
}
