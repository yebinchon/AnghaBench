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
 int CM_GCR_L2_PFT_CONTROL_B_CEN ; 
 int CM_GCR_L2_PFT_CONTROL_B_PORTID ; 
 int /*<<< orphan*/  CM_GCR_L2_PFT_CONTROL_PFTEN ; 
 scalar_t__ CM_REV_CM2_5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	if (FUNC2() < CM_REV_CM2_5)
		return;

	FUNC0(CM_GCR_L2_PFT_CONTROL_PFTEN);
	FUNC1(CM_GCR_L2_PFT_CONTROL_B_PORTID |
				   CM_GCR_L2_PFT_CONTROL_B_CEN);
}