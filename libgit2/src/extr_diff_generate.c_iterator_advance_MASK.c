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
struct TYPE_8__ {int flags; } ;
typedef  TYPE_1__ git_iterator ;
struct TYPE_9__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ git_index_entry ;

/* Variables and functions */
 int GIT_ITERATOR_IGNORE_CASE ; 
 int GIT_ITERATOR_INCLUDE_CONFLICTS ; 
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 int FUNC1 (TYPE_2__ const**,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(
	const git_index_entry **entry,
	git_iterator *iterator)
{
	const git_index_entry *prev_entry = *entry;
	int cmp, error;

	/* if we're looking for conflicts, we only want to report
	 * one conflict for each file, instead of all three sides.
	 * so if this entry is a conflict for this file, and the
	 * previous one was a conflict for the same file, skip it.
	 */
	while ((error = FUNC1(entry, iterator)) == 0) {
		if (!(iterator->flags & GIT_ITERATOR_INCLUDE_CONFLICTS) ||
			!FUNC0(prev_entry) ||
			!FUNC0(*entry))
			break;

		cmp = (iterator->flags & GIT_ITERATOR_IGNORE_CASE) ?
			FUNC2(prev_entry->path, (*entry)->path) :
			FUNC3(prev_entry->path, (*entry)->path);

		if (cmp)
			break;
	}

	if (error == GIT_ITEROVER) {
		*entry = NULL;
		error = 0;
	}

	return error;
}