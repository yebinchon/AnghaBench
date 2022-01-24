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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int FUNC1 (scalar_t__*) ; 
 int FUNC2 (scalar_t__,scalar_t__*) ; 

int FUNC3(u64 *rm_base, u64 *rm_size, u64 *region_total)
{
	int result;
	u64 ppe_id;

	FUNC0(&ppe_id);
	*rm_base = 0;
	result = FUNC2(ppe_id, rm_size);
	return result ? result
		: FUNC1(region_total);
}