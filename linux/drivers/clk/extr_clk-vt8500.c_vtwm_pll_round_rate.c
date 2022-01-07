
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pll {int type; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;




 long VT8500_BITS_TO_FREQ (unsigned long,int ,int ) ;
 long WM8650_BITS_TO_FREQ (unsigned long,int ,int ,int ) ;
 long WM8750_BITS_TO_FREQ (unsigned long,int ,int ,int ) ;
 long WM8850_BITS_TO_FREQ (unsigned long,int ,int ,int ) ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;
 int vt8500_find_pll_bits (unsigned long,unsigned long,int *,int *) ;
 int wm8650_find_pll_bits (unsigned long,unsigned long,int *,int *,int *) ;
 int wm8750_find_pll_bits (unsigned long,unsigned long,int *,int *,int *,int *) ;
 int wm8850_find_pll_bits (unsigned long,unsigned long,int *,int *,int *) ;

__attribute__((used)) static long vtwm_pll_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *prate)
{
 struct clk_pll *pll = to_clk_pll(hw);
 u32 filter, mul, div1, div2;
 long round_rate;
 int ret;

 switch (pll->type) {
 case 131:
  ret = vt8500_find_pll_bits(rate, *prate, &mul, &div1);
  if (!ret)
   round_rate = VT8500_BITS_TO_FREQ(*prate, mul, div1);
  break;
 case 130:
  ret = wm8650_find_pll_bits(rate, *prate, &mul, &div1, &div2);
  if (!ret)
   round_rate = WM8650_BITS_TO_FREQ(*prate, mul, div1, div2);
  break;
 case 129:
  ret = wm8750_find_pll_bits(rate, *prate, &filter, &mul, &div1, &div2);
  if (!ret)
   round_rate = WM8750_BITS_TO_FREQ(*prate, mul, div1, div2);
  break;
 case 128:
  ret = wm8850_find_pll_bits(rate, *prate, &mul, &div1, &div2);
  if (!ret)
   round_rate = WM8850_BITS_TO_FREQ(*prate, mul, div1, div2);
  break;
 default:
  ret = -EINVAL;
 }

 if (ret)
  return ret;

 return round_rate;
}
