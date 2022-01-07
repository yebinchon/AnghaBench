
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs2000_priv {unsigned long saved_rate; unsigned long saved_parent_rate; } ;


 int cs2000_clk_in_bound_rate (struct cs2000_priv*,unsigned long) ;
 int cs2000_ratio_select (struct cs2000_priv*,int) ;
 int cs2000_ratio_set (struct cs2000_priv*,int,unsigned long,unsigned long) ;

__attribute__((used)) static int __cs2000_set_rate(struct cs2000_priv *priv, int ch,
        unsigned long rate, unsigned long parent_rate)

{
 int ret;

 ret = cs2000_clk_in_bound_rate(priv, parent_rate);
 if (ret < 0)
  return ret;

 ret = cs2000_ratio_set(priv, ch, parent_rate, rate);
 if (ret < 0)
  return ret;

 ret = cs2000_ratio_select(priv, ch);
 if (ret < 0)
  return ret;

 priv->saved_rate = rate;
 priv->saved_parent_rate = parent_rate;

 return 0;
}
