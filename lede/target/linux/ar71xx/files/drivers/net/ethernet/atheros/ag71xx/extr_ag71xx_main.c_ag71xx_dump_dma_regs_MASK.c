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
struct ag71xx {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_RX_CTRL ; 
 int /*<<< orphan*/  AG71XX_REG_RX_DESC ; 
 int /*<<< orphan*/  AG71XX_REG_RX_STATUS ; 
 int /*<<< orphan*/  AG71XX_REG_TX_CTRL ; 
 int /*<<< orphan*/  AG71XX_REG_TX_DESC ; 
 int /*<<< orphan*/  AG71XX_REG_TX_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ag71xx *ag)
{
	FUNC0("%s: dma_tx_ctrl=%08x, dma_tx_desc=%08x, dma_tx_status=%08x\n",
		ag->dev->name,
		FUNC1(ag, AG71XX_REG_TX_CTRL),
		FUNC1(ag, AG71XX_REG_TX_DESC),
		FUNC1(ag, AG71XX_REG_TX_STATUS));

	FUNC0("%s: dma_rx_ctrl=%08x, dma_rx_desc=%08x, dma_rx_status=%08x\n",
		ag->dev->name,
		FUNC1(ag, AG71XX_REG_RX_CTRL),
		FUNC1(ag, AG71XX_REG_RX_DESC),
		FUNC1(ag, AG71XX_REG_RX_STATUS));
}