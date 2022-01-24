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
struct intel_uncore_type {int num_boxes; struct intel_uncore_pmu* events_group; struct intel_uncore_pmu* pmus; } ;
struct intel_uncore_pmu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_uncore_pmu*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore_pmu*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore_pmu*) ; 

__attribute__((used)) static void FUNC3(struct intel_uncore_type *type)
{
	struct intel_uncore_pmu *pmu = type->pmus;
	int i;

	if (pmu) {
		for (i = 0; i < type->num_boxes; i++, pmu++) {
			FUNC2(pmu);
			FUNC1(pmu);
		}
		FUNC0(type->pmus);
		type->pmus = NULL;
	}
	FUNC0(type->events_group);
	type->events_group = NULL;
}