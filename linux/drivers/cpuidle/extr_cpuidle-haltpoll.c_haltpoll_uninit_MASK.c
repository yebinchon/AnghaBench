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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * haltpoll_cpuidle_devices ; 
 int /*<<< orphan*/  haltpoll_driver ; 
 scalar_t__ haltpoll_hp_state ; 

__attribute__((used)) static void FUNC3(void)
{
	if (haltpoll_hp_state)
		FUNC0(haltpoll_hp_state);
	FUNC1(&haltpoll_driver);

	FUNC2(haltpoll_cpuidle_devices);
	haltpoll_cpuidle_devices = NULL;
}