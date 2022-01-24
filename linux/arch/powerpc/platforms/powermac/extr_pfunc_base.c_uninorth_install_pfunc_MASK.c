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
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct device_node*) ; 
 int /*<<< orphan*/  PMF_FLAGS_ON_INIT ; 
 struct device_node* FUNC1 (struct device_node*,struct device_node*) ; 
 scalar_t__ FUNC2 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct device_node* unin_hwclock ; 
 int /*<<< orphan*/  unin_mmio_handlers ; 
 struct device_node* uninorth_node ; 

__attribute__((used)) static void FUNC5(void)
{
	struct device_node *np;

	FUNC0("Installing functions for UniN %pOF\n",
	    uninorth_node);

	/*
	 * Install handlers for the bridge itself
	 */
	FUNC4(uninorth_node, &unin_mmio_handlers, NULL);
	FUNC3(uninorth_node, NULL, 0, PMF_FLAGS_ON_INIT, NULL);


	/*
	 * Install handlers for the hwclock child if any
	 */
	for (np = NULL; (np = FUNC1(uninorth_node, np)) != NULL;)
		if (FUNC2(np, "hw-clock")) {
			unin_hwclock = np;
			break;
		}
	if (unin_hwclock) {
		FUNC0("Installing functions for UniN clock %pOF\n",
		    unin_hwclock);
		FUNC4(unin_hwclock, &unin_mmio_handlers, NULL);
		FUNC3(unin_hwclock, NULL, 0, PMF_FLAGS_ON_INIT,
				 NULL);
	}
}