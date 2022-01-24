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
typedef  enum todo_command { ____Placeholder_todo_command } todo_command ;
struct TYPE_2__ {char const* str; } ;

/* Variables and functions */
 int const TODO_COMMENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const) ; 
 TYPE_1__* todo_command_info ; 

__attribute__((used)) static const char *FUNC2(const enum todo_command command)
{
	if (command < TODO_COMMENT)
		return todo_command_info[command].str;
	FUNC1(FUNC0("unknown command: %d"), command);
}