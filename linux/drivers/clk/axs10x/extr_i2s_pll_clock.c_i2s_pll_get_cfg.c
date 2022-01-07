
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2s_pll_cfg {int dummy; } ;


 struct i2s_pll_cfg const* i2s_pll_cfg_27m ;
 struct i2s_pll_cfg const* i2s_pll_cfg_28m ;

__attribute__((used)) static const struct i2s_pll_cfg *i2s_pll_get_cfg(unsigned long prate)
{
 switch (prate) {
 case 27000000:
  return i2s_pll_cfg_27m;
 case 28224000:
  return i2s_pll_cfg_28m;
 default:
  return ((void*)0);
 }
}
