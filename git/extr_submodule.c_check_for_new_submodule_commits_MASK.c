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
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  append_oid_to_array ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int initialized_fetch_ref_tips ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  ref_tips_after_fetch ; 
 int /*<<< orphan*/  ref_tips_before_fetch ; 

void FUNC2(struct object_id *oid)
{
	if (!initialized_fetch_ref_tips) {
		FUNC0(append_oid_to_array, &ref_tips_before_fetch);
		initialized_fetch_ref_tips = 1;
	}

	FUNC1(&ref_tips_after_fetch, oid);
}