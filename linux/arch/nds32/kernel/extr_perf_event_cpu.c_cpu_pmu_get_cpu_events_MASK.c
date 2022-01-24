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
struct pmu_hw_events {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_hw_events ; 
 struct pmu_hw_events* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct pmu_hw_events *FUNC1(void)
{
	return FUNC0(&cpu_hw_events);
}