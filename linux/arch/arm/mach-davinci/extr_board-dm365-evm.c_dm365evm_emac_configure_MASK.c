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

/* Variables and functions */
 int /*<<< orphan*/  DM365_EMAC_COL ; 
 int /*<<< orphan*/  DM365_EMAC_CRS ; 
 int /*<<< orphan*/  DM365_EMAC_MDCLK ; 
 int /*<<< orphan*/  DM365_EMAC_MDIO ; 
 int /*<<< orphan*/  DM365_EMAC_RXD0 ; 
 int /*<<< orphan*/  DM365_EMAC_RXD1 ; 
 int /*<<< orphan*/  DM365_EMAC_RXD2 ; 
 int /*<<< orphan*/  DM365_EMAC_RXD3 ; 
 int /*<<< orphan*/  DM365_EMAC_RX_CLK ; 
 int /*<<< orphan*/  DM365_EMAC_RX_DV ; 
 int /*<<< orphan*/  DM365_EMAC_RX_ER ; 
 int /*<<< orphan*/  DM365_EMAC_TXD0 ; 
 int /*<<< orphan*/  DM365_EMAC_TXD1 ; 
 int /*<<< orphan*/  DM365_EMAC_TXD2 ; 
 int /*<<< orphan*/  DM365_EMAC_TXD3 ; 
 int /*<<< orphan*/  DM365_EMAC_TX_CLK ; 
 int /*<<< orphan*/  DM365_EMAC_TX_EN ; 
 int /*<<< orphan*/  DM365_INT_EMAC_MISCPULSE ; 
 int /*<<< orphan*/  DM365_INT_EMAC_RXPULSE ; 
 int /*<<< orphan*/  DM365_INT_EMAC_RXTHRESH ; 
 int /*<<< orphan*/  DM365_INT_EMAC_TXPULSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void)
{
	/*
	 * EMAC pins are multiplexed with GPIO and UART
	 * Further details are available at the DM365 ARM
	 * Subsystem Users Guide(sprufg5.pdf) pages 125 - 127
	 */
	FUNC0(DM365_EMAC_TX_EN);
	FUNC0(DM365_EMAC_TX_CLK);
	FUNC0(DM365_EMAC_COL);
	FUNC0(DM365_EMAC_TXD3);
	FUNC0(DM365_EMAC_TXD2);
	FUNC0(DM365_EMAC_TXD1);
	FUNC0(DM365_EMAC_TXD0);
	FUNC0(DM365_EMAC_RXD3);
	FUNC0(DM365_EMAC_RXD2);
	FUNC0(DM365_EMAC_RXD1);
	FUNC0(DM365_EMAC_RXD0);
	FUNC0(DM365_EMAC_RX_CLK);
	FUNC0(DM365_EMAC_RX_DV);
	FUNC0(DM365_EMAC_RX_ER);
	FUNC0(DM365_EMAC_CRS);
	FUNC0(DM365_EMAC_MDIO);
	FUNC0(DM365_EMAC_MDCLK);

	/*
	 * EMAC interrupts are multiplexed with GPIO interrupts
	 * Details are available at the DM365 ARM
	 * Subsystem Users Guide(sprufg5.pdf) pages 133 - 134
	 */
	FUNC0(DM365_INT_EMAC_RXTHRESH);
	FUNC0(DM365_INT_EMAC_RXPULSE);
	FUNC0(DM365_INT_EMAC_TXPULSE);
	FUNC0(DM365_INT_EMAC_MISCPULSE);
}