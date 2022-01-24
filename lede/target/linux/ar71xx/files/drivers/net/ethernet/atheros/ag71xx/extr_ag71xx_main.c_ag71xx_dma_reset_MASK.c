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
struct ag71xx {int stop_desc_dma; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_RX_CTRL ; 
 int /*<<< orphan*/  AG71XX_REG_RX_DESC ; 
 int /*<<< orphan*/  AG71XX_REG_RX_STATUS ; 
 int /*<<< orphan*/  AG71XX_REG_TX_CTRL ; 
 int /*<<< orphan*/  AG71XX_REG_TX_DESC ; 
 int /*<<< orphan*/  AG71XX_REG_TX_STATUS ; 
 int RX_STATUS_BE ; 
 int RX_STATUS_OF ; 
 int RX_STATUS_PR ; 
 int TX_STATUS_BE ; 
 int TX_STATUS_PS ; 
 int TX_STATUS_UR ; 
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 int FUNC1 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ag71xx *ag)
{
	u32 val;
	int i;

	FUNC0(ag);

	/* stop RX and TX */
	FUNC2(ag, AG71XX_REG_RX_CTRL, 0);
	FUNC2(ag, AG71XX_REG_TX_CTRL, 0);

	/*
	 * give the hardware some time to really stop all rx/tx activity
	 * clearing the descriptors too early causes random memory corruption
	 */
	FUNC3(1);

	/* clear descriptor addresses */
	FUNC2(ag, AG71XX_REG_TX_DESC, ag->stop_desc_dma);
	FUNC2(ag, AG71XX_REG_RX_DESC, ag->stop_desc_dma);

	/* clear pending RX/TX interrupts */
	for (i = 0; i < 256; i++) {
		FUNC2(ag, AG71XX_REG_RX_STATUS, RX_STATUS_PR);
		FUNC2(ag, AG71XX_REG_TX_STATUS, TX_STATUS_PS);
	}

	/* clear pending errors */
	FUNC2(ag, AG71XX_REG_RX_STATUS, RX_STATUS_BE | RX_STATUS_OF);
	FUNC2(ag, AG71XX_REG_TX_STATUS, TX_STATUS_BE | TX_STATUS_UR);

	val = FUNC1(ag, AG71XX_REG_RX_STATUS);
	if (val)
		FUNC4("%s: unable to clear DMA Rx status: %08x\n",
			 ag->dev->name, val);

	val = FUNC1(ag, AG71XX_REG_TX_STATUS);

	/* mask out reserved bits */
	val &= ~0xff000000;

	if (val)
		FUNC4("%s: unable to clear DMA Tx status: %08x\n",
			 ag->dev->name, val);

	FUNC0(ag);
}