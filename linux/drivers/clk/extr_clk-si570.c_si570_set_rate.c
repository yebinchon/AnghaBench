
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct clk_si570 {unsigned long max_freq; unsigned long frequency; struct i2c_client* i2c_client; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 unsigned long SI570_MIN_FREQ ;
 long long abs (unsigned long) ;
 int dev_err (int *,char*,unsigned long) ;
 int div64_u64 (long long,unsigned long) ;
 int si570_set_frequency (struct clk_si570*,unsigned long) ;
 int si570_set_frequency_small (struct clk_si570*,unsigned long) ;
 struct clk_si570* to_clk_si570 (struct clk_hw*) ;

__attribute__((used)) static int si570_set_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long parent_rate)
{
 struct clk_si570 *data = to_clk_si570(hw);
 struct i2c_client *client = data->i2c_client;
 int err;

 if (rate < SI570_MIN_FREQ || rate > data->max_freq) {
  dev_err(&client->dev,
   "requested frequency %lu Hz is out of range\n", rate);
  return -EINVAL;
 }

 if (div64_u64(abs(rate - data->frequency) * 10000LL,
    data->frequency) < 35)
  err = si570_set_frequency_small(data, rate);
 else
  err = si570_set_frequency(data, rate);

 if (err)
  return err;

 data->frequency = rate;

 return 0;
}
