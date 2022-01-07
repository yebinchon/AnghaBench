
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mt7620_gsw {int dummy; } ;
struct fe_priv {unsigned int* link; int netdev; TYPE_1__* soc; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ swpriv; } ;


 int BIT (int) ;
 int IRQ_HANDLED ;
 int mt7530_mdio_r32 (struct mt7620_gsw*,int) ;
 int mt7530_mdio_w32 (struct mt7620_gsw*,int,int) ;
 int mt7620_handle_carrier (struct fe_priv*) ;
 int netdev_info (int ,char*,int) ;

__attribute__((used)) static irqreturn_t gsw_interrupt_mt7621(int irq, void *_priv)
{
 struct fe_priv *priv = (struct fe_priv *)_priv;
 struct mt7620_gsw *gsw = (struct mt7620_gsw *)priv->soc->swpriv;
 u32 reg, i;

 reg = mt7530_mdio_r32(gsw, 0x700c);
 mt7530_mdio_w32(gsw, 0x700c, reg);

 for (i = 0; i < 5; i++)
  if (reg & BIT(i)) {
   unsigned int link;

   link = mt7530_mdio_r32(gsw,
            0x3008 + (i * 0x100)) & 0x1;

   if (link != priv->link[i]) {
    priv->link[i] = link;
    if (link)
     netdev_info(priv->netdev,
          "port %d link up\n", i);
    else
     netdev_info(priv->netdev,
          "port %d link down\n", i);
   }
  }

 mt7620_handle_carrier(priv);

 return IRQ_HANDLED;
}
