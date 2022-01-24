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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  SWITCH_INTS_USED ; 
 int SWITCH_NUM_PORTS ; 
 int /*<<< orphan*/  SWITCH_REG_PORT_CONF0 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct net_device** adm5120_devs ; 
 int /*<<< orphan*/ * adm5120_eth_vlans ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  adm5120_switch_irq ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sw_used ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	u32 t;
	int err;
	int i;

	FUNC2(dev);

	err = FUNC4(dev->irq, adm5120_switch_irq, IRQF_SHARED,
			  dev->name, dev);
	if (err) {
		FUNC0("unable to get irq for %s\n", dev->name);
		goto err;
	}

	if (!sw_used++)
		/* enable interrupts on first open */
		FUNC5(SWITCH_INTS_USED);

	/* enable (additional) port */
	t = FUNC6(SWITCH_REG_PORT_CONF0);
	for (i = 0; i < SWITCH_NUM_PORTS; i++) {
		if (dev == adm5120_devs[i])
			t &= ~adm5120_eth_vlans[i];
	}
	FUNC7(SWITCH_REG_PORT_CONF0, t);

	FUNC3(dev);

	return 0;

err:
	FUNC1(dev);
	return err;
}