
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;



__attribute__((used)) static long jz4780_otg_phy_round_rate(struct clk_hw *hw, unsigned long req_rate,
          unsigned long *parent_rate)
{
 if (req_rate < 15600000)
  return 12000000;

 if (req_rate < 21600000)
  return 19200000;

 if (req_rate < 36000000)
  return 24000000;

 return 48000000;
}
