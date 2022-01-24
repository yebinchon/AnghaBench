#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* list; } ;
typedef  TYPE_1__ git_config_entries ;
struct TYPE_9__ {int /*<<< orphan*/  entry; struct TYPE_9__* next; } ;
typedef  TYPE_2__ config_entry_list ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__**) ; 

int FUNC3(git_config_entries **out, git_config_entries *entries)
{
	git_config_entries *result = NULL;
	config_entry_list *head;
	int error;

	if ((error = FUNC2(&result)) < 0)
		goto out;

	for (head = entries->list; head; head = head->next)
		if ((FUNC0(result, head->entry)) < 0)
			goto out;

	*out = result;
	result = NULL;

out:
	FUNC1(result);
	return error;
}