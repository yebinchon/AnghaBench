#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  irq; } ;
struct adm5120_if_priv {int /*<<< orphan*/  napi; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM5120_IRQ_SWITCH ; 
 int /*<<< orphan*/  TX_TIMEOUT ; 
 int /*<<< orphan*/  adm5120_if_poll ; 
 int /*<<< orphan*/  adm5120sw_netdev_ops ; 
 struct net_device* FUNC0 (int) ; 
 struct adm5120_if_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct net_device *FUNC3(void)
{
	struct net_device *dev;
	struct adm5120_if_priv *priv;

	dev = FUNC0(sizeof(*priv));
	if (!dev)
		return NULL;

	priv = FUNC1(dev);
	priv->dev = dev;

	dev->irq		= ADM5120_IRQ_SWITCH;
	dev->netdev_ops		= &adm5120sw_netdev_ops;
	dev->watchdog_timeo	= TX_TIMEOUT;

#ifdef CONFIG_ADM5120_SWITCH_NAPI
	netif_napi_add(dev, &priv->napi, adm5120_if_poll, 64);
#endif

	return dev;
}