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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * am33xx_control_vals ; 
 int /*<<< orphan*/ * am43xx_control_reg_offsets ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	int i;

	for (i = 0; i < FUNC0(am43xx_control_reg_offsets); i++)
		FUNC1(am33xx_control_vals[i],
				 am43xx_control_reg_offsets[i]);
}