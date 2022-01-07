
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_si514_muldiv {int dummy; } ;
struct clk_si514 {TYPE_1__* i2c_client; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 unsigned long si514_calc_rate (struct clk_si514_muldiv*) ;
 int si514_get_muldiv (struct clk_si514*,struct clk_si514_muldiv*) ;
 struct clk_si514* to_clk_si514 (struct clk_hw*) ;

__attribute__((used)) static unsigned long si514_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct clk_si514 *data = to_clk_si514(hw);
 struct clk_si514_muldiv settings;
 int err;

 err = si514_get_muldiv(data, &settings);
 if (err) {
  dev_err(&data->i2c_client->dev, "unable to retrieve settings\n");
  return 0;
 }

 return si514_calc_rate(&settings);
}
