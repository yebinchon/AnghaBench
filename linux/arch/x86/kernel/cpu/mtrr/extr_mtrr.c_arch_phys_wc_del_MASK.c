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
 int MTRR_TO_PHYS_WC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(int handle)
{
	if (handle >= 1) {
		FUNC0(handle < MTRR_TO_PHYS_WC_OFFSET);
		FUNC1(handle - MTRR_TO_PHYS_WC_OFFSET, 0, 0);
	}
}