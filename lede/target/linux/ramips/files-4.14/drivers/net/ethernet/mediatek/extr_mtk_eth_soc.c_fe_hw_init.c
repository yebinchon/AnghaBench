
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dev_addr; int irq; } ;
struct fe_priv {TYPE_1__* soc; int dev; } ;
struct TYPE_2__ {int tx_int; int rx_int; scalar_t__ (* fwd_config ) (struct fe_priv*) ;int (* set_mac ) (struct fe_priv*,int ) ;} ;


 size_t FE_REG_DLY_INT_CFG ;
 size_t FE_REG_FE_DMA_VID_BASE ;
 size_t FE_REG_FE_RST_GL ;
 int dev_name (int ) ;
 int devm_request_irq (int ,int ,int ,int ,int ,struct net_device*) ;
 int fe_handle_irq ;
 int fe_hw_set_macaddr (struct fe_priv*,int ) ;
 int fe_int_disable (int) ;
 scalar_t__* fe_reg_table ;
 int fe_reg_w32 (int,size_t) ;
 int fe_w32 (int,scalar_t__) ;
 int netdev_err (struct net_device*,char*) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct fe_priv*,int ) ;
 scalar_t__ stub2 (struct fe_priv*) ;

__attribute__((used)) static int fe_hw_init(struct net_device *dev)
{
 struct fe_priv *priv = netdev_priv(dev);
 int i, err;

 err = devm_request_irq(priv->dev, dev->irq, fe_handle_irq, 0,
          dev_name(priv->dev), dev);
 if (err)
  return err;

 if (priv->soc->set_mac)
  priv->soc->set_mac(priv, dev->dev_addr);
 else
  fe_hw_set_macaddr(priv, dev->dev_addr);


 fe_reg_w32(0, FE_REG_DLY_INT_CFG);

 fe_int_disable(priv->soc->tx_int | priv->soc->rx_int);


 if (fe_reg_table[FE_REG_FE_DMA_VID_BASE])
  for (i = 0; i < 16; i += 2)
   fe_w32(((i + 1) << 16) + i,
          fe_reg_table[FE_REG_FE_DMA_VID_BASE] +
          (i * 2));

 if (priv->soc->fwd_config(priv))
  netdev_err(dev, "unable to get clock\n");

 if (fe_reg_table[FE_REG_FE_RST_GL]) {
  fe_reg_w32(1, FE_REG_FE_RST_GL);
  fe_reg_w32(0, FE_REG_FE_RST_GL);
 }

 return 0;
}
