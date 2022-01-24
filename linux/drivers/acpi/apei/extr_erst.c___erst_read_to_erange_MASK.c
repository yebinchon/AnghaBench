#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_2__ {int attr; } ;

/* Variables and functions */
 int ERST_RANGE_NVRAM ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,scalar_t__*) ; 
 TYPE_1__ erst_erange ; 

__attribute__((used)) static int FUNC2(u64 record_id, u64 *offset)
{
	int rc;

	if (erst_erange.attr & ERST_RANGE_NVRAM)
		return FUNC1(
			record_id, offset);

	rc = FUNC0(record_id, 0);
	if (rc)
		return rc;
	*offset = 0;

	return 0;
}