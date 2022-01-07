
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int initialized; } ;


 int ar8xxx_phy_init (struct ar8xxx_priv*) ;

__attribute__((used)) static int
ar8216_hw_init(struct ar8xxx_priv *priv)
{
 if (priv->initialized)
  return 0;

 ar8xxx_phy_init(priv);

 priv->initialized = 1;
 return 0;
}
