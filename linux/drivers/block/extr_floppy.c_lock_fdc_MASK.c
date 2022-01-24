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
 int EINTR ; 
 int /*<<< orphan*/  FD_COMMAND_NONE ; 
 scalar_t__ FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  command_status ; 
 int /*<<< orphan*/  fdc_busy ; 
 int /*<<< orphan*/  fdc_wait ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usage_count ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(int drive)
{
	if (FUNC0(FUNC1(&usage_count) == 0,
		 "Trying to lock fdc while usage count=0\n"))
		return -1;

	if (FUNC5(fdc_wait, !FUNC4(0, &fdc_busy)))
		return -EINTR;

	command_status = FD_COMMAND_NONE;

	FUNC2(drive, "lock fdc");
	FUNC3(drive);
	return 0;
}