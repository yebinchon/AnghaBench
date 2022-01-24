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
typedef  int u32 ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct ag71xx {int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AG71XX_INT_ERR ; 
 int AG71XX_INT_POLL ; 
 int AG71XX_INT_RX_BE ; 
 int AG71XX_INT_TX_BE ; 
 int /*<<< orphan*/  AG71XX_REG_INT_STATUS ; 
 int /*<<< orphan*/  AG71XX_REG_RX_STATUS ; 
 int /*<<< orphan*/  AG71XX_REG_TX_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  RX_STATUS_BE ; 
 int /*<<< orphan*/  TX_STATUS_BE ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ag71xx*,int) ; 
 int FUNC4 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct ag71xx* FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct ag71xx *ag = FUNC9(dev);
	u32 status;

	status = FUNC4(ag, AG71XX_REG_INT_STATUS);
	FUNC2(ag, "raw", status);

	if (FUNC10(!status))
		return IRQ_NONE;

	if (FUNC10(status & AG71XX_INT_ERR)) {
		if (status & AG71XX_INT_TX_BE) {
			FUNC5(ag, AG71XX_REG_TX_STATUS, TX_STATUS_BE);
			FUNC6(&dev->dev, "TX BUS error\n");
		}
		if (status & AG71XX_INT_RX_BE) {
			FUNC5(ag, AG71XX_REG_RX_STATUS, RX_STATUS_BE);
			FUNC6(&dev->dev, "RX BUS error\n");
		}
	}

	if (FUNC7(status & AG71XX_INT_POLL)) {
		FUNC3(ag, AG71XX_INT_POLL);
		FUNC0("%s: enable polling mode\n", dev->name);
		FUNC8(&ag->napi);
	}

	FUNC1(ag, status);

	return IRQ_HANDLED;
}