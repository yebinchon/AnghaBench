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
 int /*<<< orphan*/  GIT_OPT_GET_MWINDOW_SIZE ; 
 int /*<<< orphan*/  GIT_OPT_SET_MWINDOW_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 

void FUNC2(void)
{
	size_t old_val = 0;
	size_t new_val = 0;

	FUNC1(GIT_OPT_GET_MWINDOW_SIZE, &old_val);
	FUNC1(GIT_OPT_SET_MWINDOW_SIZE, (size_t)1234);
	FUNC1(GIT_OPT_GET_MWINDOW_SIZE, &new_val);

	FUNC0(new_val == 1234);

	FUNC1(GIT_OPT_SET_MWINDOW_SIZE, old_val);
	FUNC1(GIT_OPT_GET_MWINDOW_SIZE, &new_val);

	FUNC0(new_val == old_val);
}