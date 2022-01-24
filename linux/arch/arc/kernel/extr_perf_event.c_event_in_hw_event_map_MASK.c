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
 int /*<<< orphan*/ * arc_pmu_ev_hw_map ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(int i, char *name)
{
	if (!arc_pmu_ev_hw_map[i])
		return false;

	if (!FUNC1(arc_pmu_ev_hw_map[i]))
		return false;

	if (FUNC0(arc_pmu_ev_hw_map[i], name))
		return false;

	return true;
}