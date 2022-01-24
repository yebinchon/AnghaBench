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
struct cpuidle_device {struct cpuidle_coupled* coupled; int /*<<< orphan*/  coupled_cpus; } ;
struct cpuidle_coupled {scalar_t__ refcnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuidle_coupled*) ; 

void FUNC2(struct cpuidle_device *dev)
{
	struct cpuidle_coupled *coupled = dev->coupled;

	if (FUNC0(&dev->coupled_cpus))
		return;

	if (--coupled->refcnt)
		FUNC1(coupled);
	dev->coupled = NULL;
}