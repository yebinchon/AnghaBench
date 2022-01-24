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
 int /*<<< orphan*/  PDC_CACHE ; 
 int /*<<< orphan*/  PDC_CACHE_RET_SPID ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdc_lock ; 
 unsigned long* pdc_result ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(unsigned long *space_bits)
{
	int retval;
	unsigned long flags;

	FUNC3(&pdc_lock, flags);
	pdc_result[0] = 0;
	retval = FUNC2(PDC_CACHE, PDC_CACHE_RET_SPID, FUNC0(pdc_result), 0);
	FUNC1(pdc_result);
	*space_bits = pdc_result[0];
	FUNC4(&pdc_lock, flags);

	return retval;
}