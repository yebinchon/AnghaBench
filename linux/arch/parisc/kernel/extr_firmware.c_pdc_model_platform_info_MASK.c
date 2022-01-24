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
 int /*<<< orphan*/  PDC_MODEL ; 
 int /*<<< orphan*/  PDC_MODEL_GET_PLATFORM_INFO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdc_lock ; 
 int /*<<< orphan*/  pdc_result ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(char *orig_prod_num, char *current_prod_num,
		char *serial_no)
{
	int retval;
	unsigned long flags;

	FUNC3(&pdc_lock, flags);
	retval = FUNC2(PDC_MODEL, PDC_MODEL_GET_PLATFORM_INFO,
		FUNC0(orig_prod_num), FUNC0(current_prod_num), FUNC0(serial_no));
	FUNC1(pdc_result);
	FUNC4(&pdc_lock, flags);

	return retval;
}