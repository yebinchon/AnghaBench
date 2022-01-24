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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWITCH_INTS_ALL ; 
 int SWITCH_NUM_PORTS ; 
 struct net_device** adm5120_devs ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(void)
{
	int i;

	/* disable interrupts */
	FUNC3(SWITCH_INTS_ALL);

	for (i = 0; i < SWITCH_NUM_PORTS; i++) {
		struct net_device *dev = adm5120_devs[i];
		if (dev) {
			FUNC4(dev);
			FUNC2(dev);
		}
	}

	FUNC1();
	FUNC0();
}