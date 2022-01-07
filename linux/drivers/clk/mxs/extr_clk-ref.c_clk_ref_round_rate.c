
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct clk_hw {int dummy; } ;


 int do_div (int,int) ;

__attribute__((used)) static long clk_ref_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *prate)
{
 unsigned long parent_rate = *prate;
 u64 tmp = parent_rate;
 u8 frac;

 tmp = tmp * 18 + rate / 2;
 do_div(tmp, rate);
 frac = tmp;

 if (frac < 18)
  frac = 18;
 else if (frac > 35)
  frac = 35;

 tmp = parent_rate;
 tmp *= 18;
 do_div(tmp, frac);

 return tmp;
}
