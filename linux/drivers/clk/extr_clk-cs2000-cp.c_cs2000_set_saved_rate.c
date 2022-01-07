
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs2000_priv {int saved_parent_rate; int saved_rate; } ;


 int __cs2000_set_rate (struct cs2000_priv*,int,int ,int ) ;

__attribute__((used)) static int cs2000_set_saved_rate(struct cs2000_priv *priv)
{
 int ch = 0;

 return __cs2000_set_rate(priv, ch,
     priv->saved_rate,
     priv->saved_parent_rate);
}
