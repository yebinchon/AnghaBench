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
struct TYPE_8__ {void* theirs; void* ours; void* ancestor; } ;
typedef  TYPE_1__ git_index_name_entry ;
struct TYPE_9__ {int dirty; int /*<<< orphan*/  names; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 void* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(git_index *index,
	const char *ancestor, const char *ours, const char *theirs)
{
	git_index_name_entry *conflict_name;

	FUNC1((ancestor && ours) || (ancestor && theirs) || (ours && theirs));

	conflict_name = FUNC2(1, sizeof(git_index_name_entry));
	FUNC0(conflict_name);

	if ((ancestor && !(conflict_name->ancestor = FUNC3(ancestor))) ||
		(ours     && !(conflict_name->ours     = FUNC3(ours))) ||
		(theirs   && !(conflict_name->theirs   = FUNC3(theirs))) ||
		FUNC4(&index->names, conflict_name) < 0)
	{
		FUNC5(conflict_name);
		return -1;
	}

	index->dirty = 1;
	return 0;
}