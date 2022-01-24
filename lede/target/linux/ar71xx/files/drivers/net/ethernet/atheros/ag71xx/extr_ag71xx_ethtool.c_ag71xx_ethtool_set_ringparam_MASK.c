#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {TYPE_3__* netdev_ops; } ;
struct ethtool_ringparam {scalar_t__ rx_mini_pending; scalar_t__ rx_jumbo_pending; unsigned int rx_pending; unsigned int tx_pending; } ;
struct TYPE_5__ {void* order; } ;
struct TYPE_4__ {void* order; scalar_t__ desc_split; } ;
struct ag71xx {TYPE_2__ rx_ring; TYPE_1__ tx_ring; } ;
struct TYPE_6__ {int (* ndo_stop ) (struct net_device*) ;int (* ndo_open ) (struct net_device*) ;} ;

/* Variables and functions */
 unsigned int AG71XX_RX_RING_SIZE_MAX ; 
 unsigned int AG71XX_TX_RING_DS_PER_PKT ; 
 unsigned int AG71XX_TX_RING_SIZE_MAX ; 
 int EINVAL ; 
 void* FUNC0 (unsigned int) ; 
 struct ag71xx* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
					struct ethtool_ringparam *er)
{
	struct ag71xx *ag = FUNC1(dev);
	unsigned tx_size;
	unsigned rx_size;
	int err = 0;

	if (er->rx_mini_pending != 0||
	    er->rx_jumbo_pending != 0 ||
	    er->rx_pending == 0 ||
	    er->tx_pending == 0)
		return -EINVAL;

	tx_size = er->tx_pending < AG71XX_TX_RING_SIZE_MAX ?
		  er->tx_pending : AG71XX_TX_RING_SIZE_MAX;

	rx_size = er->rx_pending < AG71XX_RX_RING_SIZE_MAX ?
		  er->rx_pending : AG71XX_RX_RING_SIZE_MAX;

	if (FUNC2(dev)) {
		err = dev->netdev_ops->ndo_stop(dev);
		if (err)
			return err;
	}

	if (ag->tx_ring.desc_split)
		tx_size *= AG71XX_TX_RING_DS_PER_PKT;

	ag->tx_ring.order = FUNC0(tx_size);
	ag->rx_ring.order = FUNC0(rx_size);

	if (FUNC2(dev))
		err = dev->netdev_ops->ndo_open(dev);

	return err;
}