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
typedef  int /*<<< orphan*/  u32 ;
struct eth_device {scalar_t__ priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  descs_dma; } ;
struct TYPE_4__ {int /*<<< orphan*/  descs_dma; } ;
struct ag71xx {int link; int duplex; TYPE_3__* dev; int /*<<< orphan*/  speed; scalar_t__ phyfixed; TYPE_2__ rx_ring; TYPE_1__ tx_ring; } ;
typedef  int /*<<< orphan*/  bd_t ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  enetaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_RX_CTRL ; 
 int /*<<< orphan*/  AG71XX_REG_RX_DESC ; 
 int /*<<< orphan*/  AG71XX_REG_TX_DESC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX_CTRL_RXE ; 
 int /*<<< orphan*/  SPEED_1000 ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*) ; 
 scalar_t__ FUNC2 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC5 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC6 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC7 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct eth_device *dev, bd_t * bd)
{
	struct ag71xx *ag = (struct ag71xx *) dev->priv;

	FUNC1(ag);

    FUNC5(ag);
	FUNC6(ag);
	
	FUNC8(ag, AG71XX_REG_TX_DESC, 
				(u32) FUNC9(ag->tx_ring.descs_dma));
	FUNC8(ag, AG71XX_REG_RX_DESC,
				(u32) FUNC9(ag->rx_ring.descs_dma));

	FUNC3(ag, ag->dev->enetaddr);

    if (ag->phyfixed) {
        ag->link = 1;
        ag->duplex = 1;
        ag->speed = SPEED_1000;
    } else {

#if (defined(CONFIG_MII) || defined(CONFIG_CMD_MII))
		if (ag71xx_getMiiSpeed(ag))
			return -1;
#else
		/* only fixed, without mii */
		return -1;
#endif

    }
    FUNC4(ag);
	
	FUNC0("%s: txdesc reg: %#08x rxdesc reg: %#08x\n",
		ag->dev->name,
		FUNC7(ag, AG71XX_REG_TX_DESC),
		FUNC7(ag, AG71XX_REG_RX_DESC));
	
	/* start RX engine */
	FUNC8(ag, AG71XX_REG_RX_CTRL, RX_CTRL_RXE);
	
	return 0;
}