
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct clk_si570 {unsigned long frequency; int fxtal; TYPE_1__* i2c_client; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int div_u64 (int,unsigned int) ;
 int si570_get_divs (struct clk_si570*,int*,unsigned int*,unsigned int*) ;
 struct clk_si570* to_clk_si570 (struct clk_hw*) ;

__attribute__((used)) static unsigned long si570_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 int err;
 u64 rfreq, rate;
 unsigned int n1, hs_div;
 struct clk_si570 *data = to_clk_si570(hw);

 err = si570_get_divs(data, &rfreq, &n1, &hs_div);
 if (err) {
  dev_err(&data->i2c_client->dev, "unable to recalc rate\n");
  return data->frequency;
 }

 rfreq = div_u64(rfreq, hs_div * n1);
 rate = (data->fxtal * rfreq) >> 28;

 return rate;
}
