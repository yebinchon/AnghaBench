
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cs2000_priv {int dummy; } ;
struct clk_hw {int dummy; } ;


 int cs2000_ratio_get (struct cs2000_priv*,int) ;
 unsigned long cs2000_ratio_to_rate (int ,unsigned long) ;
 struct cs2000_priv* hw_to_priv (struct clk_hw*) ;

__attribute__((used)) static unsigned long cs2000_recalc_rate(struct clk_hw *hw,
     unsigned long parent_rate)
{
 struct cs2000_priv *priv = hw_to_priv(hw);
 int ch = 0;
 u32 ratio;

 ratio = cs2000_ratio_get(priv, ch);

 return cs2000_ratio_to_rate(ratio, parent_rate);
}
