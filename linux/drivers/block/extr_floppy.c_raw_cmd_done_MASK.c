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
struct TYPE_2__ {int flags; int reply_count; int* reply; struct TYPE_2__* next; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int FD_RAW_DISK_CHANGE ; 
 int FD_RAW_FAILURE ; 
 int FD_RAW_HARDFAILURE ; 
 int FD_RAW_NO_MOTOR_AFTER ; 
 int FD_RAW_READ ; 
 int FD_RAW_SOFTFAILURE ; 
 int FD_RAW_STOP_IF_FAILURE ; 
 int FD_RAW_STOP_IF_SUCCESS ; 
 int FD_RAW_WRITE ; 
 int MAX_REPLIES ; 
 unsigned long FUNC0 () ; 
 size_t current_drive ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int inr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * motor_off_timer ; 
 TYPE_1__* raw_cmd ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int* reply_buffer ; 

__attribute__((used)) static void FUNC6(int flag)
{
	int i;

	if (!flag) {
		raw_cmd->flags |= FD_RAW_FAILURE;
		raw_cmd->flags |= FD_RAW_HARDFAILURE;
	} else {
		raw_cmd->reply_count = inr;
		if (raw_cmd->reply_count > MAX_REPLIES)
			raw_cmd->reply_count = 0;
		for (i = 0; i < raw_cmd->reply_count; i++)
			raw_cmd->reply[i] = reply_buffer[i];

		if (raw_cmd->flags & (FD_RAW_READ | FD_RAW_WRITE)) {
			unsigned long flags;
			flags = FUNC0();
			raw_cmd->length = FUNC2();
			FUNC5(flags);
		}

		if ((raw_cmd->flags & FD_RAW_SOFTFAILURE) &&
		    (!raw_cmd->reply_count || (raw_cmd->reply[0] & 0xc0)))
			raw_cmd->flags |= FD_RAW_FAILURE;

		if (FUNC1(current_drive))
			raw_cmd->flags |= FD_RAW_DISK_CHANGE;
		else
			raw_cmd->flags &= ~FD_RAW_DISK_CHANGE;
		if (raw_cmd->flags & FD_RAW_NO_MOTOR_AFTER)
			FUNC4(&motor_off_timer[current_drive]);

		if (raw_cmd->next &&
		    (!(raw_cmd->flags & FD_RAW_FAILURE) ||
		     !(raw_cmd->flags & FD_RAW_STOP_IF_FAILURE)) &&
		    ((raw_cmd->flags & FD_RAW_FAILURE) ||
		     !(raw_cmd->flags & FD_RAW_STOP_IF_SUCCESS))) {
			raw_cmd = raw_cmd->next;
			return;
		}
	}
	FUNC3(flag);
}