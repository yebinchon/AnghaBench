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
 int /*<<< orphan*/  PDC_ADD_VALID ; 
 int /*<<< orphan*/  PDC_ADD_VALID_VERIFY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  pdc_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(unsigned long address)
{
        int retval;
	unsigned long flags;

        FUNC1(&pdc_lock, flags);
        retval = FUNC0(PDC_ADD_VALID, PDC_ADD_VALID_VERIFY, address);
        FUNC2(&pdc_lock, flags);

        return retval;
}