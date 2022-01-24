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
struct sun5_timer {int dummy; } ;
struct device_node {struct device_node* sibling; struct device_node* child; } ;

/* Variables and functions */
 struct device_node* FUNC0 (char*) ; 
 unsigned int* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct sun5_timer* prom_timers ; 

__attribute__((used)) static void FUNC4(void)
{
	struct device_node *dp;
	const unsigned int *addr;

	/* PROM timer node hangs out in the top level of device siblings... */
	dp = FUNC0("/");
	dp = dp->child;
	while (dp) {
		if (FUNC2(dp, "counter-timer"))
			break;
		dp = dp->sibling;
	}

	/* Assume if node is not present, PROM uses different tick mechanism
	 * which we should not care about.
	 */
	if (!dp) {
		prom_timers = (struct sun5_timer *) 0;
		return;
	}

	/* If PROM is really using this, it must be mapped by him. */
	addr = FUNC1(dp, "address", NULL);
	if (!addr) {
		FUNC3("PROM does not have timer mapped, trying to continue.\n");
		prom_timers = (struct sun5_timer *) 0;
		return;
	}
	prom_timers = (struct sun5_timer *) ((unsigned long)addr[0]);
}