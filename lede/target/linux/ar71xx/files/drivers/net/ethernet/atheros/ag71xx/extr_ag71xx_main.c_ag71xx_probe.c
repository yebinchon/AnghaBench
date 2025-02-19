
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_12__ {struct ag71xx_platform_data* platform_data; } ;
struct platform_device {TYPE_6__ dev; } ;
struct net_device {unsigned long base_addr; int irq; int name; int dev_addr; int * ethtool_ops; int * netdev_ops; } ;
struct ag71xx_platform_data {int phy_if_mode; int mac_addr; int is_ar91xx; int is_ar724x; scalar_t__ desc_pktlen_mask; scalar_t__ max_frame_len; scalar_t__ phy_mask; int * mii_bus_dev; } ;
struct ag71xx_desc {int dummy; } ;
struct TYPE_9__ {void* order; int desc_split; } ;
struct TYPE_8__ {void* order; } ;
struct TYPE_10__ {unsigned long data; int function; } ;
struct ag71xx {scalar_t__ mac_base; scalar_t__ stop_desc_dma; TYPE_4__* stop_desc; int napi; TYPE_2__ tx_ring; scalar_t__ desc_pktlen_mask; scalar_t__ max_frame_len; TYPE_1__ rx_ring; TYPE_3__ oom_timer; int restart_work; int lock; int msg_enable; struct net_device* dev; struct platform_device* pdev; } ;
struct TYPE_11__ {scalar_t__ next; scalar_t__ ctrl; scalar_t__ data; } ;


 int AG71XX_DEFAULT_MSG_ENABLE ;
 int AG71XX_NAPI_WEIGHT ;
 int AG71XX_RX_RING_SIZE_DEFAULT ;
 int AG71XX_TX_RING_DS_PER_PKT ;
 int AG71XX_TX_RING_SIZE_DEFAULT ;
 int AG71XX_TX_RING_SPLIT ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_6__*) ;
 int ag71xx_debugfs_exit (struct ag71xx*) ;
 int ag71xx_debugfs_init (struct ag71xx*) ;
 int ag71xx_dump_regs (struct ag71xx*) ;
 int ag71xx_ethtool_ops ;
 int ag71xx_get_phy_if_mode_name (int ) ;
 int ag71xx_hw_init (struct ag71xx*) ;
 int ag71xx_interrupt ;
 int ag71xx_msg_level ;
 int ag71xx_netdev_ops ;
 int ag71xx_oom_timer_handler ;
 int ag71xx_phy_connect (struct ag71xx*) ;
 int ag71xx_phy_disconnect (struct ag71xx*) ;
 int ag71xx_poll ;
 int ag71xx_restart_work_func ;
 void* ag71xx_ring_size_order (int) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_err (TYPE_6__*,char*,...) ;
 TYPE_4__* dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int dma_free_coherent (int *,int,TYPE_4__*,scalar_t__) ;
 int free_irq (int ,struct net_device*) ;
 int init_timer (TYPE_3__*) ;
 scalar_t__ ioremap_nocache (scalar_t__,scalar_t__) ;
 int iounmap (scalar_t__) ;
 int kfree (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 int netif_msg_init (int ,int ) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int pr_info (char*,int ,unsigned long,int ,int ) ;
 int register_netdev (struct net_device*) ;
 int request_irq (int ,int ,int,int ,struct net_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ag71xx_probe(struct platform_device *pdev)
{
 struct net_device *dev;
 struct resource *res;
 struct ag71xx *ag;
 struct ag71xx_platform_data *pdata;
 int tx_size, err;

 pdata = pdev->dev.platform_data;
 if (!pdata) {
  dev_err(&pdev->dev, "no platform data specified\n");
  err = -ENXIO;
  goto err_out;
 }

 if (pdata->mii_bus_dev == ((void*)0) && pdata->phy_mask) {
  dev_err(&pdev->dev, "no MII bus device specified\n");
  err = -EINVAL;
  goto err_out;
 }

 dev = alloc_etherdev(sizeof(*ag));
 if (!dev) {
  dev_err(&pdev->dev, "alloc_etherdev failed\n");
  err = -ENOMEM;
  goto err_out;
 }

 if (!pdata->max_frame_len || !pdata->desc_pktlen_mask)
  return -EINVAL;

 SET_NETDEV_DEV(dev, &pdev->dev);

 ag = netdev_priv(dev);
 ag->pdev = pdev;
 ag->dev = dev;
 ag->msg_enable = netif_msg_init(ag71xx_msg_level,
     AG71XX_DEFAULT_MSG_ENABLE);
 spin_lock_init(&ag->lock);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mac_base");
 if (!res) {
  dev_err(&pdev->dev, "no mac_base resource found\n");
  err = -ENXIO;
  goto err_out;
 }

 ag->mac_base = ioremap_nocache(res->start, res->end - res->start + 1);
 if (!ag->mac_base) {
  dev_err(&pdev->dev, "unable to ioremap mac_base\n");
  err = -ENOMEM;
  goto err_free_dev;
 }

 dev->irq = platform_get_irq(pdev, 0);
 err = request_irq(dev->irq, ag71xx_interrupt,
     0x0,
     dev->name, dev);
 if (err) {
  dev_err(&pdev->dev, "unable to request IRQ %d\n", dev->irq);
  goto err_unmap_base;
 }

 dev->base_addr = (unsigned long)ag->mac_base;
 dev->netdev_ops = &ag71xx_netdev_ops;
 dev->ethtool_ops = &ag71xx_ethtool_ops;

 INIT_DELAYED_WORK(&ag->restart_work, ag71xx_restart_work_func);

 init_timer(&ag->oom_timer);
 ag->oom_timer.data = (unsigned long) dev;
 ag->oom_timer.function = ag71xx_oom_timer_handler;

 tx_size = AG71XX_TX_RING_SIZE_DEFAULT;
 ag->rx_ring.order = ag71xx_ring_size_order(AG71XX_RX_RING_SIZE_DEFAULT);

 ag->max_frame_len = pdata->max_frame_len;
 ag->desc_pktlen_mask = pdata->desc_pktlen_mask;

 if (!pdata->is_ar724x && !pdata->is_ar91xx) {
  ag->tx_ring.desc_split = AG71XX_TX_RING_SPLIT;
  tx_size *= AG71XX_TX_RING_DS_PER_PKT;
 }
 ag->tx_ring.order = ag71xx_ring_size_order(tx_size);

 ag->stop_desc = dma_alloc_coherent(((void*)0),
  sizeof(struct ag71xx_desc), &ag->stop_desc_dma, GFP_KERNEL);

 if (!ag->stop_desc)
  goto err_free_irq;

 ag->stop_desc->data = 0;
 ag->stop_desc->ctrl = 0;
 ag->stop_desc->next = (u32) ag->stop_desc_dma;

 memcpy(dev->dev_addr, pdata->mac_addr, ETH_ALEN);

 netif_napi_add(dev, &ag->napi, ag71xx_poll, AG71XX_NAPI_WEIGHT);

 ag71xx_dump_regs(ag);

 ag71xx_hw_init(ag);

 ag71xx_dump_regs(ag);

 err = ag71xx_phy_connect(ag);
 if (err)
  goto err_free_desc;

 err = ag71xx_debugfs_init(ag);
 if (err)
  goto err_phy_disconnect;

 platform_set_drvdata(pdev, dev);

 err = register_netdev(dev);
 if (err) {
  dev_err(&pdev->dev, "unable to register net device\n");
  goto err_debugfs_exit;
 }

 pr_info("%s: Atheros AG71xx at 0x%08lx, irq %d, mode:%s\n",
  dev->name, dev->base_addr, dev->irq,
  ag71xx_get_phy_if_mode_name(pdata->phy_if_mode));

 return 0;

err_debugfs_exit:
 ag71xx_debugfs_exit(ag);
err_phy_disconnect:
 ag71xx_phy_disconnect(ag);
err_free_desc:
 dma_free_coherent(((void*)0), sizeof(struct ag71xx_desc), ag->stop_desc,
     ag->stop_desc_dma);
err_free_irq:
 free_irq(dev->irq, dev);
err_unmap_base:
 iounmap(ag->mac_base);
err_free_dev:
 kfree(dev);
err_out:
 platform_set_drvdata(pdev, ((void*)0));
 return err;
}
