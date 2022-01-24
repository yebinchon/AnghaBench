#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct walker {int dummy; } ;
struct commit_list {TYPE_3__* item; struct commit_list* next; } ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  oid; } ;
struct commit {scalar_t__ date; struct commit_list* parents; TYPE_2__ object; } ;
struct TYPE_11__ {int /*<<< orphan*/  object; } ;
struct TYPE_10__ {TYPE_1__* item; } ;
struct TYPE_9__ {int /*<<< orphan*/  object; } ;
struct TYPE_7__ {scalar_t__ date; } ;

/* Variables and functions */
 int COMPLETE ; 
 TYPE_4__* complete ; 
 int /*<<< orphan*/  current_commit_oid ; 
 TYPE_5__* FUNC0 (struct commit*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct commit*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**,int) ; 
 scalar_t__ FUNC5 (struct walker*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct walker*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct walker *walker, struct commit *commit)
{
	struct commit_list *parents;

	if (FUNC3(commit))
		return -1;

	while (complete && complete->item->date >= commit->date) {
		FUNC4(&complete, COMPLETE);
	}

	if (commit->object.flags & COMPLETE)
		return 0;

	FUNC2(&current_commit_oid, &commit->object.oid);

	FUNC6(walker, "walk %s\n", FUNC1(&commit->object.oid));

	if (FUNC5(walker, &FUNC0(commit)->object))
		return -1;

	for (parents = commit->parents; parents; parents = parents->next) {
		if (FUNC5(walker, &parents->item->object))
			return -1;
	}

	return 0;
}