
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs2000_priv {int dummy; } ;
struct clk_hw {int dummy; } ;


 int cs2000_clk_out_enable (struct cs2000_priv*,int) ;
 int cs2000_enable_dev_config (struct cs2000_priv*,int) ;
 struct cs2000_priv* hw_to_priv (struct clk_hw*) ;

__attribute__((used)) static void cs2000_disable(struct clk_hw *hw)
{
 struct cs2000_priv *priv = hw_to_priv(hw);

 cs2000_enable_dev_config(priv, 0);

 cs2000_clk_out_enable(priv, 0);
}
