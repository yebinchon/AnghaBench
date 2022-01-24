#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_12__ {struct ag71xx_platform_data* platform_data; } ;
struct platform_device {TYPE_6__ dev; } ;
struct net_device {unsigned long base_addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct ag71xx_platform_data {int /*<<< orphan*/  phy_if_mode; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  is_ar91xx; int /*<<< orphan*/  is_ar724x; scalar_t__ desc_pktlen_mask; scalar_t__ max_frame_len; scalar_t__ phy_mask; int /*<<< orphan*/ * mii_bus_dev; } ;
struct ag71xx_desc {int dummy; } ;
struct TYPE_9__ {void* order; int /*<<< orphan*/  desc_split; } ;
struct TYPE_8__ {void* order; } ;
struct TYPE_10__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct ag71xx {scalar_t__ mac_base; scalar_t__ stop_desc_dma; TYPE_4__* stop_desc; int /*<<< orphan*/  napi; TYPE_2__ tx_ring; scalar_t__ desc_pktlen_mask; scalar_t__ max_frame_len; TYPE_1__ rx_ring; TYPE_3__ oom_timer; int /*<<< orphan*/  restart_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  msg_enable; struct net_device* dev; struct platform_device* pdev; } ;
struct TYPE_11__ {scalar_t__ next; scalar_t__ ctrl; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_DEFAULT_MSG_ENABLE ; 
 int /*<<< orphan*/  AG71XX_NAPI_WEIGHT ; 
 int AG71XX_RX_RING_SIZE_DEFAULT ; 
 int AG71XX_TX_RING_DS_PER_PKT ; 
 int AG71XX_TX_RING_SIZE_DEFAULT ; 
 int /*<<< orphan*/  AG71XX_TX_RING_SPLIT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*) ; 
 int FUNC3 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ag71xx*) ; 
 int /*<<< orphan*/  ag71xx_ethtool_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ag71xx*) ; 
 int /*<<< orphan*/  ag71xx_interrupt ; 
 int /*<<< orphan*/  ag71xx_msg_level ; 
 int /*<<< orphan*/  ag71xx_netdev_ops ; 
 int /*<<< orphan*/  ag71xx_oom_timer_handler ; 
 int FUNC7 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC8 (struct ag71xx*) ; 
 int /*<<< orphan*/  ag71xx_poll ; 
 int /*<<< orphan*/  ag71xx_restart_work_func ; 
 void* FUNC9 (int) ; 
 struct net_device* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,char*,...) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ag71xx* FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC24 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct net_device*) ; 
 int FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC30(struct platform_device *pdev)
{
	struct net_device *dev;
	struct resource *res;
	struct ag71xx *ag;
	struct ag71xx_platform_data *pdata;
	int tx_size, err;

	pdata = pdev->dev.platform_data;
	if (!pdata) {
		FUNC11(&pdev->dev, "no platform data specified\n");
		err = -ENXIO;
		goto err_out;
	}

	if (pdata->mii_bus_dev == NULL && pdata->phy_mask) {
		FUNC11(&pdev->dev, "no MII bus device specified\n");
		err = -EINVAL;
		goto err_out;
	}

	dev = FUNC10(sizeof(*ag));
	if (!dev) {
		FUNC11(&pdev->dev, "alloc_etherdev failed\n");
		err = -ENOMEM;
		goto err_out;
	}

	if (!pdata->max_frame_len || !pdata->desc_pktlen_mask)
		return -EINVAL;

	FUNC1(dev, &pdev->dev);

	ag = FUNC20(dev);
	ag->pdev = pdev;
	ag->dev = dev;
	ag->msg_enable = FUNC21(ag71xx_msg_level,
					AG71XX_DEFAULT_MSG_ENABLE);
	FUNC29(&ag->lock);

	res = FUNC24(pdev, IORESOURCE_MEM, "mac_base");
	if (!res) {
		FUNC11(&pdev->dev, "no mac_base resource found\n");
		err = -ENXIO;
		goto err_out;
	}

	ag->mac_base = FUNC16(res->start, res->end - res->start + 1);
	if (!ag->mac_base) {
		FUNC11(&pdev->dev, "unable to ioremap mac_base\n");
		err = -ENOMEM;
		goto err_free_dev;
	}

	dev->irq = FUNC23(pdev, 0);
	err = FUNC28(dev->irq, ag71xx_interrupt,
			  0x0,
			  dev->name, dev);
	if (err) {
		FUNC11(&pdev->dev, "unable to request IRQ %d\n", dev->irq);
		goto err_unmap_base;
	}

	dev->base_addr = (unsigned long)ag->mac_base;
	dev->netdev_ops = &ag71xx_netdev_ops;
	dev->ethtool_ops = &ag71xx_ethtool_ops;

	FUNC0(&ag->restart_work, ag71xx_restart_work_func);

	FUNC15(&ag->oom_timer);
	ag->oom_timer.data = (unsigned long) dev;
	ag->oom_timer.function = ag71xx_oom_timer_handler;

	tx_size = AG71XX_TX_RING_SIZE_DEFAULT;
	ag->rx_ring.order = FUNC9(AG71XX_RX_RING_SIZE_DEFAULT);

	ag->max_frame_len = pdata->max_frame_len;
	ag->desc_pktlen_mask = pdata->desc_pktlen_mask;

	if (!pdata->is_ar724x && !pdata->is_ar91xx) {
		ag->tx_ring.desc_split = AG71XX_TX_RING_SPLIT;
		tx_size *= AG71XX_TX_RING_DS_PER_PKT;
	}
	ag->tx_ring.order = FUNC9(tx_size);

	ag->stop_desc = FUNC12(NULL,
		sizeof(struct ag71xx_desc), &ag->stop_desc_dma, GFP_KERNEL);

	if (!ag->stop_desc)
		goto err_free_irq;

	ag->stop_desc->data = 0;
	ag->stop_desc->ctrl = 0;
	ag->stop_desc->next = (u32) ag->stop_desc_dma;

	FUNC19(dev->dev_addr, pdata->mac_addr, ETH_ALEN);

	FUNC22(dev, &ag->napi, ag71xx_poll, AG71XX_NAPI_WEIGHT);

	FUNC4(ag);

	FUNC6(ag);

	FUNC4(ag);

	err = FUNC7(ag);
	if (err)
		goto err_free_desc;

	err = FUNC3(ag);
	if (err)
		goto err_phy_disconnect;

	FUNC25(pdev, dev);

	err = FUNC27(dev);
	if (err) {
		FUNC11(&pdev->dev, "unable to register net device\n");
		goto err_debugfs_exit;
	}

	FUNC26("%s: Atheros AG71xx at 0x%08lx, irq %d, mode:%s\n",
		dev->name, dev->base_addr, dev->irq,
		FUNC5(pdata->phy_if_mode));

	return 0;

err_debugfs_exit:
	FUNC2(ag);
err_phy_disconnect:
	FUNC8(ag);
err_free_desc:
	FUNC13(NULL, sizeof(struct ag71xx_desc), ag->stop_desc,
			  ag->stop_desc_dma);
err_free_irq:
	FUNC14(dev->irq, dev);
err_unmap_base:
	FUNC17(ag->mac_base);
err_free_dev:
	FUNC18(dev);
err_out:
	FUNC25(pdev, NULL);
	return err;
}