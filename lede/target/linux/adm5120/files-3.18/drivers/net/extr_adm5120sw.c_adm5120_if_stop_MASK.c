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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWITCH_INTS_USED ; 
 int SWITCH_NUM_PORTS ; 
 int /*<<< orphan*/  SWITCH_PORTS_NOCPU ; 
 int /*<<< orphan*/  SWITCH_REG_PORT_CONF0 ; 
 struct net_device** adm5120_devs ; 
 int /*<<< orphan*/ * adm5120_eth_vlans ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sw_used ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	u32 t;
	int i;

	FUNC3(dev);
	FUNC0(dev);

	/* disable port if not assigned to other devices */
	t = FUNC5(SWITCH_REG_PORT_CONF0);
	t |= SWITCH_PORTS_NOCPU;
	for (i = 0; i < SWITCH_NUM_PORTS; i++) {
		if ((dev != adm5120_devs[i]) && FUNC2(adm5120_devs[i]))
			t &= ~adm5120_eth_vlans[i];
	}
	FUNC6(SWITCH_REG_PORT_CONF0, t);

	if (!--sw_used)
		FUNC4(SWITCH_INTS_USED);

	FUNC1(dev->irq, dev);

	return 0;
}