
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs2000_priv {int dummy; } ;
struct clk_hw {int dummy; } ;


 int __cs2000_set_rate (struct cs2000_priv*,int,unsigned long,unsigned long) ;
 struct cs2000_priv* hw_to_priv (struct clk_hw*) ;

__attribute__((used)) static int cs2000_set_rate(struct clk_hw *hw,
      unsigned long rate, unsigned long parent_rate)
{
 struct cs2000_priv *priv = hw_to_priv(hw);
 int ch = 0;

 return __cs2000_set_rate(priv, ch, rate, parent_rate);
}
