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
typedef  int u64 ;
struct fe_priv {struct fe_hw_stats* hw_stats; } ;
struct fe_hw_stats {int rx_bytes; int rx_packets; int rx_overflow; int rx_fcs_errors; int rx_short_errors; int rx_long_errors; int rx_checksum_errors; int rx_flow_control_packets; int tx_skip; int tx_collisions; int tx_bytes; int tx_packets; int /*<<< orphan*/  syncp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SOC_MT7621 ; 
 size_t FE_REG_FE_COUNTER_BASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 unsigned int* fe_reg_table ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct fe_priv *priv)
{
	struct fe_hw_stats *hwstats = priv->hw_stats;
	unsigned int base = fe_reg_table[FE_REG_FE_COUNTER_BASE];
	u64 stats;

	FUNC2(&hwstats->syncp);

	if (FUNC0(CONFIG_SOC_MT7621)) {
		hwstats->rx_bytes			+= FUNC1(base);
		stats					=  FUNC1(base + 0x04);
		if (stats)
			hwstats->rx_bytes		+= (stats << 32);
		hwstats->rx_packets			+= FUNC1(base + 0x08);
		hwstats->rx_overflow			+= FUNC1(base + 0x10);
		hwstats->rx_fcs_errors			+= FUNC1(base + 0x14);
		hwstats->rx_short_errors		+= FUNC1(base + 0x18);
		hwstats->rx_long_errors			+= FUNC1(base + 0x1c);
		hwstats->rx_checksum_errors		+= FUNC1(base + 0x20);
		hwstats->rx_flow_control_packets	+= FUNC1(base + 0x24);
		hwstats->tx_skip			+= FUNC1(base + 0x28);
		hwstats->tx_collisions			+= FUNC1(base + 0x2c);
		hwstats->tx_bytes			+= FUNC1(base + 0x30);
		stats					=  FUNC1(base + 0x34);
		if (stats)
			hwstats->tx_bytes		+= (stats << 32);
		hwstats->tx_packets			+= FUNC1(base + 0x38);
	} else {
		hwstats->tx_bytes			+= FUNC1(base);
		hwstats->tx_packets			+= FUNC1(base + 0x04);
		hwstats->tx_skip			+= FUNC1(base + 0x08);
		hwstats->tx_collisions			+= FUNC1(base + 0x0c);
		hwstats->rx_bytes			+= FUNC1(base + 0x20);
		hwstats->rx_packets			+= FUNC1(base + 0x24);
		hwstats->rx_overflow			+= FUNC1(base + 0x28);
		hwstats->rx_fcs_errors			+= FUNC1(base + 0x2c);
		hwstats->rx_short_errors		+= FUNC1(base + 0x30);
		hwstats->rx_long_errors			+= FUNC1(base + 0x34);
		hwstats->rx_checksum_errors		+= FUNC1(base + 0x38);
		hwstats->rx_flow_control_packets	+= FUNC1(base + 0x3c);
	}

	FUNC3(&hwstats->syncp);
}