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
struct nuport_mac_priv {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned int DMA_CHAN_WIDTH ; 
 scalar_t__ RX_DMA_BASE ; 
 scalar_t__ TX_DMA_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,...) ; 
 struct nuport_mac_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nuport_mac_priv*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct nuport_mac_priv*) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct nuport_mac_priv *priv = FUNC1(dev);
	unsigned int i;

	FUNC2(dev, "transmit timeout, attempting recovery\n");

	FUNC0(dev, "TX DMA regs\n");
	for (i = 0; i < DMA_CHAN_WIDTH; i += 4)
		FUNC0(dev, "[%02x]: 0x%08x\n", i, FUNC5(TX_DMA_BASE + i));
	FUNC0(dev, "RX DMA regs\n");
	for (i = 0; i < DMA_CHAN_WIDTH; i += 4)
		FUNC0(dev, "[%02x]: 0x%08x\n", i, FUNC5(RX_DMA_BASE + i));

	FUNC4(priv);
	FUNC6(priv);

	FUNC3(dev);
}