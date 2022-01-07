
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fe_priv {scalar_t__ mii_bus; int dev; } ;


 scalar_t__ mdiobus_get_phy (scalar_t__,int) ;
 int mt7530_probe (int ,int *,scalar_t__,int) ;

__attribute__((used)) static int mt7621_gsw_config(struct fe_priv *priv)
{
 if (priv->mii_bus && mdiobus_get_phy(priv->mii_bus, 0x1f))
  mt7530_probe(priv->dev, ((void*)0), priv->mii_bus, 1);

 return 0;
}
