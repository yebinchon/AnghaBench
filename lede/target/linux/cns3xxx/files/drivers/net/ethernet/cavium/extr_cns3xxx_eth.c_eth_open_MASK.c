#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sw {TYPE_1__* regs; int /*<<< orphan*/  napi; int /*<<< orphan*/  stat_irq; int /*<<< orphan*/  rx_irq; } ;
struct port {size_t id; int /*<<< orphan*/  phydev; scalar_t__ speed; struct sw* sw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mac_cfg; int /*<<< orphan*/  dma_auto_poll_cfg; int /*<<< orphan*/  intr_mask; } ;

/* Variables and functions */
 int FS_SUSPEND ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int MAC0_RX_ERROR ; 
 int MAC0_STATUS_CHANGE ; 
 int MAC1_RX_ERROR ; 
 int MAC1_STATUS_CHANGE ; 
 int MAC2_RX_ERROR ; 
 int MAC2_STATUS_CHANGE ; 
 int PORT_DISABLE ; 
 int TS_SUSPEND ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sw*) ; 
 int /*<<< orphan*/  eth_rx_irq ; 
 int /*<<< orphan*/  eth_stat_irq ; 
 struct net_device* napi_dev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct port* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ports_open ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct port *port = FUNC4(dev);
	struct sw *sw = port->sw;
	u32 temp;

	port->speed = 0;	/* force "link up" message */
	FUNC7(port->phydev);

	FUNC6(dev);

	if (!ports_open) {
		FUNC8(sw->rx_irq, eth_rx_irq, IRQF_SHARED, "gig_switch", napi_dev);
		FUNC8(sw->stat_irq, eth_stat_irq, IRQF_SHARED, "gig_stat", napi_dev);
		FUNC3(&sw->napi);
		FUNC6(napi_dev);

 		FUNC1(~(MAC0_STATUS_CHANGE | MAC1_STATUS_CHANGE | MAC2_STATUS_CHANGE |
 			       MAC0_RX_ERROR | MAC1_RX_ERROR | MAC2_RX_ERROR), &sw->regs->intr_mask);

		temp = FUNC0(&sw->regs->mac_cfg[2]);
		temp &= ~(PORT_DISABLE);
		FUNC1(temp, &sw->regs->mac_cfg[2]);

		temp = FUNC0(&sw->regs->dma_auto_poll_cfg);
		temp &= ~(TS_SUSPEND | FS_SUSPEND);
		FUNC1(temp, &sw->regs->dma_auto_poll_cfg);

		FUNC2(sw);
	}
	temp = FUNC0(&sw->regs->mac_cfg[port->id]);
	temp &= ~(PORT_DISABLE);
	FUNC1(temp, &sw->regs->mac_cfg[port->id]);

	ports_open++;
	FUNC5(dev);

	return 0;
}