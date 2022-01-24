#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct recent_command {struct recent_command* next; struct recent_command* prev; int /*<<< orphan*/  buf; } ;
struct TYPE_3__ {char* buf; } ;

/* Variables and functions */
 int EOF ; 
 struct recent_command cmd_hist ; 
 struct recent_command* cmd_tail ; 
 TYPE_1__ command_buf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct recent_command* rc_free ; 
 int /*<<< orphan*/  seen_data_command ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ unread_command_buf ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(void)
{
	static int stdin_eof = 0;

	if (stdin_eof) {
		unread_command_buf = 0;
		return EOF;
	}

	for (;;) {
		if (unread_command_buf) {
			unread_command_buf = 0;
		} else {
			struct recent_command *rc;

			stdin_eof = FUNC3(&command_buf, stdin);
			if (stdin_eof)
				return EOF;

			if (!seen_data_command
				&& !FUNC2(command_buf.buf, "feature ")
				&& !FUNC2(command_buf.buf, "option ")) {
				FUNC1();
			}

			rc = rc_free;
			if (rc)
				rc_free = rc->next;
			else {
				rc = cmd_hist.next;
				cmd_hist.next = rc->next;
				cmd_hist.next->prev = &cmd_hist;
				FUNC0(rc->buf);
			}

			rc->buf = FUNC4(command_buf.buf);
			rc->prev = cmd_tail;
			rc->next = cmd_hist.prev;
			rc->prev->next = rc;
			cmd_tail = rc;
		}
		if (command_buf.buf[0] == '#')
			continue;
		return 0;
	}
}