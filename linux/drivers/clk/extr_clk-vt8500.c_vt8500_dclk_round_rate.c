
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clk_hw {int dummy; } ;
struct clk_device {int div_mask; } ;


 struct clk_device* to_clk_device (struct clk_hw*) ;

__attribute__((used)) static long vt8500_dclk_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *prate)
{
 struct clk_device *cdev = to_clk_device(hw);
 u32 divisor;

 if (rate == 0)
  return 0;

 divisor = *prate / rate;


 if (rate * divisor < *prate)
  divisor++;





 if ((cdev->div_mask == 0x3F) && (divisor > 31)) {
  divisor = 64 * ((divisor / 64) + 1);
 }

 return *prate / divisor;
}
