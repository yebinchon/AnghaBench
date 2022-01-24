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

/* Variables and functions */
 int /*<<< orphan*/  ALLOCATION_STATE ; 
 int /*<<< orphan*/  ALLOC_UNUSABLE ; 
 int DR_ENTITY_PRESENT ; 
 int /*<<< orphan*/  DR_ENTITY_SENSE ; 
 int /*<<< orphan*/  ISOLATE ; 
 int /*<<< orphan*/  ISOLATION_STATE ; 
 int /*<<< orphan*/  UNISOLATE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(u32 drc_index)
{
	int dr_status, rc;

	rc = FUNC0(FUNC2("get-sensor-state"), 2, 2, &dr_status,
		       DR_ENTITY_SENSE, drc_index);
	if (rc || dr_status != DR_ENTITY_PRESENT)
		return -1;

	rc = FUNC1(ISOLATION_STATE, drc_index, ISOLATE);
	if (rc)
		return rc;

	rc = FUNC1(ALLOCATION_STATE, drc_index, ALLOC_UNUSABLE);
	if (rc) {
		FUNC1(ISOLATION_STATE, drc_index, UNISOLATE);
		return rc;
	}

	return 0;
}