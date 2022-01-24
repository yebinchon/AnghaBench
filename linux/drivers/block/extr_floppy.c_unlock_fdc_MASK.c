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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FD_COMMAND_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  command_status ; 
 int /*<<< orphan*/ * cont ; 
 int /*<<< orphan*/ * do_floppy ; 
 int /*<<< orphan*/  fd_timeout ; 
 int /*<<< orphan*/  fdc_busy ; 
 int /*<<< orphan*/  fdc_wait ; 
 int /*<<< orphan*/ * raw_cmd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
	if (!FUNC3(0, &fdc_busy))
		FUNC0("FDC access conflict!\n");

	raw_cmd = NULL;
	command_status = FD_COMMAND_NONE;
	FUNC1(&fd_timeout);
	do_floppy = NULL;
	cont = NULL;
	FUNC2(0, &fdc_busy);
	FUNC4(&fdc_wait);
}