
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mt7620_gsw {scalar_t__ port4; int autopoll; } ;
struct fe_priv {int* link; TYPE_2__* phy; int mii_bus; int dev; TYPE_1__* soc; } ;
struct device_node {int name; } ;
typedef int __be32 ;
struct TYPE_4__ {int* speed; int* duplex; scalar_t__* phy_node; int ** phy_fixed; } ;
struct TYPE_3__ {scalar_t__ swpriv; } ;


 int BIT (int) ;
 int GSW_REG_PORT_PMCR (int) ;



 int PMCR_BACKOFF ;
 int PMCR_BACKPRES ;
 int PMCR_DUPLEX ;
 int PMCR_FORCE ;
 int PMCR_IPG ;
 int PMCR_LINK ;
 int PMCR_MAC_MODE ;
 int PMCR_RX_EN ;
 int PMCR_RX_FC ;
 int PMCR_SPEED (int) ;
 int PMCR_TX_EN ;
 int PMCR_TX_FC ;
 scalar_t__ PORT4_EPHY ;



 int SYSC_REG_CFG1 ;
 int be32_to_cpu (int const) ;
 void* be32_to_cpup (int ) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 int fe_connect_phy_node (struct fe_priv*,scalar_t__) ;
 scalar_t__ mdiobus_get_phy (int ,int) ;
 int mt7620_auto_poll (struct mt7620_gsw*) ;
 int mtk_switch_w32 (struct mt7620_gsw*,int,int ) ;
 int of_get_phy_mode (struct device_node*) ;
 void* of_get_property (struct device_node*,char*,int*) ;
 scalar_t__ of_parse_phandle (struct device_node*,char*,int ) ;
 int pr_err (char*,int ,...) ;
 int rt_sysc_r32 (int ) ;
 int rt_sysc_w32 (int,int ) ;

__attribute__((used)) static void mt7620_port_init(struct fe_priv *priv, struct device_node *np)
{
 struct mt7620_gsw *gsw = (struct mt7620_gsw *)priv->soc->swpriv;
 const __be32 *_id = of_get_property(np, "reg", ((void*)0));
 int phy_mode, size, id;
 int shift = 12;
 u32 val, mask = 0;
 int min = (gsw->port4 == PORT4_EPHY) ? (5) : (4);

 if (!_id || (be32_to_cpu(*_id) < min) || (be32_to_cpu(*_id) > 5)) {
  if (_id)
   pr_err("%s: invalid port id %d\n", np->name,
          be32_to_cpu(*_id));
  else
   pr_err("%s: invalid port id\n", np->name);
  return;
 }

 id = be32_to_cpu(*_id);

 if (id == 4)
  shift = 14;

 priv->phy->phy_fixed[id] = of_get_property(np, "mediatek,fixed-link",
         &size);
 if (priv->phy->phy_fixed[id] &&
     (size != (4 * sizeof(*priv->phy->phy_fixed[id])))) {
  pr_err("%s: invalid fixed link property\n", np->name);
  priv->phy->phy_fixed[id] = ((void*)0);
  return;
 }

 phy_mode = of_get_phy_mode(np);
 switch (phy_mode) {
 case 132:
  mask = 0;
  break;
 case 133:
  mask = 1;
  break;
 case 131:
  mask = 2;
  break;
 default:
  dev_err(priv->dev, "port %d - invalid phy mode\n", id);
  return;
 }

 priv->phy->phy_node[id] = of_parse_phandle(np, "phy-handle", 0);
 if (!priv->phy->phy_node[id] && !priv->phy->phy_fixed[id])
  return;

 val = rt_sysc_r32(SYSC_REG_CFG1);
 val &= ~(3 << shift);
 val |= mask << shift;
 rt_sysc_w32(val, SYSC_REG_CFG1);

 if (priv->phy->phy_fixed[id]) {
  const __be32 *link = priv->phy->phy_fixed[id];
  int tx_fc, rx_fc;
  u32 val = 0;

  priv->phy->speed[id] = be32_to_cpup(link++);
  tx_fc = be32_to_cpup(link++);
  rx_fc = be32_to_cpup(link++);
  priv->phy->duplex[id] = be32_to_cpup(link++);
  priv->link[id] = 1;

  switch (priv->phy->speed[id]) {
  case 130:
   val = 0;
   break;
  case 129:
   val = 1;
   break;
  case 128:
   val = 2;
   break;
  default:
   dev_err(priv->dev, "invalid link speed: %d\n",
    priv->phy->speed[id]);
   priv->phy->phy_fixed[id] = 0;
   return;
  }
  val = PMCR_SPEED(val);
  val |= PMCR_LINK | PMCR_BACKPRES | PMCR_BACKOFF | PMCR_RX_EN |
   PMCR_TX_EN | PMCR_FORCE | PMCR_MAC_MODE | PMCR_IPG;
  if (tx_fc)
   val |= PMCR_TX_FC;
  if (rx_fc)
   val |= PMCR_RX_FC;
  if (priv->phy->duplex[id])
   val |= PMCR_DUPLEX;
  mtk_switch_w32(gsw, val, GSW_REG_PORT_PMCR(id));
  dev_info(priv->dev, "using fixed link parameters\n");
  return;
 }

 if (priv->phy->phy_node[id] && mdiobus_get_phy(priv->mii_bus, id)) {
  u32 val = PMCR_BACKPRES | PMCR_BACKOFF | PMCR_RX_EN |
   PMCR_TX_EN | PMCR_MAC_MODE | PMCR_IPG;

  mtk_switch_w32(gsw, val, GSW_REG_PORT_PMCR(id));
  fe_connect_phy_node(priv, priv->phy->phy_node[id]);
  gsw->autopoll |= BIT(id);
  mt7620_auto_poll(gsw);
  return;
 }
}
