
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct mt7620_gsw {scalar_t__ irq; } ;
struct fe_priv {TYPE_1__* dev; TYPE_2__* soc; struct device_node* switch_np; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int compatible; } ;
struct TYPE_5__ {struct mt7620_gsw* swpriv; } ;
struct TYPE_4__ {int of_node; } ;


 int EINVAL ;
 int ENODEV ;
 int GSW_REG_IMR ;
 int PORT_IRQ_ST_CHG ;
 int gsw_interrupt_mt7620 ;
 TYPE_3__* mediatek_gsw_match ;
 int mt7620_hw_init (struct mt7620_gsw*,int ) ;
 int mt7620_mdio_mode (int ) ;
 int mtk_switch_w32 (struct mt7620_gsw*,int ,int ) ;
 int of_device_is_compatible (struct device_node*,int ) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct mt7620_gsw* platform_get_drvdata (struct platform_device*) ;
 int request_irq (scalar_t__,int ,int ,char*,struct fe_priv*) ;

int mtk_gsw_init(struct fe_priv *priv)
{
 struct device_node *np = priv->switch_np;
 struct platform_device *pdev = of_find_device_by_node(np);
 struct mt7620_gsw *gsw;

 if (!pdev)
  return -ENODEV;

 if (!of_device_is_compatible(np, mediatek_gsw_match->compatible))
  return -EINVAL;

 gsw = platform_get_drvdata(pdev);
 priv->soc->swpriv = gsw;

 mt7620_hw_init(gsw, mt7620_mdio_mode(priv->dev->of_node));

 if (gsw->irq) {
  request_irq(gsw->irq, gsw_interrupt_mt7620, 0,
       "gsw", priv);
  mtk_switch_w32(gsw, ~PORT_IRQ_ST_CHG, GSW_REG_IMR);
 }

 return 0;
}
