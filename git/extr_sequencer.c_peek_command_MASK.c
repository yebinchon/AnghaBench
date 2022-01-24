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
struct todo_list {int current; int nr; TYPE_1__* items; } ;
typedef  enum todo_command { ____Placeholder_todo_command } todo_command ;
struct TYPE_2__ {int command; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static enum todo_command FUNC1(struct todo_list *todo_list, int offset)
{
	int i;

	for (i = todo_list->current + offset; i < todo_list->nr; i++)
		if (!FUNC0(todo_list->items[i].command))
			return todo_list->items[i].command;

	return -1;
}