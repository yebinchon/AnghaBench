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
 int /*<<< orphan*/  CONST_QNaN ; 
 int CW_Invalid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EX_Invalid ; 
 int FPU_Exception ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TAG_Special ; 
 int TAG_Valid ; 
 int control_word ; 

int FUNC2(int deststnr)
{

	FUNC0(EX_Invalid);

	if (control_word & CW_Invalid) {
		/* The masked response */
		FUNC1(&CONST_QNaN, TAG_Special, deststnr);
	}

	return (!(control_word & CW_Invalid) ? FPU_Exception : 0) | TAG_Valid;

}