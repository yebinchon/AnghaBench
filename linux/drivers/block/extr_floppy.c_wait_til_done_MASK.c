#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ reset; } ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 TYPE_1__* FDCS ; 
 int FD_COMMAND_ERROR ; 
 int FD_COMMAND_NONE ; 
 int FD_COMMAND_OKAY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  command_done ; 
 int command_status ; 
 int /*<<< orphan*/ * cont ; 
 int /*<<< orphan*/  intr_cont ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void (*) ()) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(void (*handler)(void), bool interruptible)
{
	int ret;

	FUNC2(handler);

	if (interruptible)
		FUNC4(command_done, command_status >= 2);
	else
		FUNC3(command_done, command_status >= 2);

	if (command_status < 2) {
		FUNC0();
		cont = &intr_cont;
		FUNC1();
		return -EINTR;
	}

	if (FDCS->reset)
		command_status = FD_COMMAND_ERROR;
	if (command_status == FD_COMMAND_OKAY)
		ret = 0;
	else
		ret = -EIO;
	command_status = FD_COMMAND_NONE;
	return ret;
}