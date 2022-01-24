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
struct TYPE_2__ {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct todo_list *todo_list)
{
	int i = todo_list->current;

	if (!FUNC0(todo_list->items[i].command))
		return 0;

	while (++i < todo_list->nr)
		if (FUNC0(todo_list->items[i].command))
			return 0;
		else if (!FUNC1(todo_list->items[i].command))
			break;
	return 1;
}