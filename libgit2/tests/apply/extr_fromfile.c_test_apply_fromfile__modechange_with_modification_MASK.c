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
 int /*<<< orphan*/  FILE_CHANGE_MIDDLE ; 
 int /*<<< orphan*/  FILE_ORIGINAL ; 
 int /*<<< orphan*/  PATCH_MODECHANGE_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	FUNC1(FUNC0(
		FILE_ORIGINAL, FUNC2(FILE_ORIGINAL),
		FILE_CHANGE_MIDDLE, FUNC2(FILE_CHANGE_MIDDLE),
		PATCH_MODECHANGE_MODIFIED, "file.txt", 0100755));
}