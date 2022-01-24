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
 int /*<<< orphan*/  GPIO_INPUT_INVERT ; 
 int /*<<< orphan*/  OLPC_GPIO_LID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int lid_inverted ; 

__attribute__((used)) static void FUNC2(void)
{
	/* gpio is high; invert so we'll get l->h event interrupt */
	if (lid_inverted)
		FUNC0(OLPC_GPIO_LID, GPIO_INPUT_INVERT);
	else
		FUNC1(OLPC_GPIO_LID, GPIO_INPUT_INVERT);
	lid_inverted = !lid_inverted;
}