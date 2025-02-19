
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_frac {int width; } ;


 long EINVAL ;
 int do_div (int,unsigned long) ;
 struct clk_frac* to_clk_frac (struct clk_hw*) ;

__attribute__((used)) static long clk_frac_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *prate)
{
 struct clk_frac *frac = to_clk_frac(hw);
 unsigned long parent_rate = *prate;
 u32 div;
 u64 tmp, tmp_rate, result;

 if (rate > parent_rate)
  return -EINVAL;

 tmp = rate;
 tmp <<= frac->width;
 do_div(tmp, parent_rate);
 div = tmp;

 if (!div)
  return -EINVAL;

 tmp_rate = (u64)parent_rate * div;
 result = tmp_rate >> frac->width;
 if ((result << frac->width) < tmp_rate)
  result += 1;
 return result;
}
