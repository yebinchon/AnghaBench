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
struct cpuidle_device {scalar_t__ next_hrtimer; scalar_t__ last_residency; int /*<<< orphan*/  states_usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct cpuidle_device *dev)
{
	FUNC0(dev->states_usage, 0, sizeof(dev->states_usage));
	dev->last_residency = 0;
	dev->next_hrtimer = 0;
}