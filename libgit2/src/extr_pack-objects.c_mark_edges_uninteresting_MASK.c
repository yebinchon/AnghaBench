#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_2__ git_packbuilder ;
struct TYPE_9__ {TYPE_1__* item; struct TYPE_9__* next; } ;
typedef  TYPE_3__ git_commit_list ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_7__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  uninteresting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(git_packbuilder *pb, git_commit_list *commits)
{
	int error;
	git_commit_list *list;
	git_commit *commit;

	for (list = commits; list; list = list->next) {
		if (!list->item->uninteresting)
			continue;

		if ((error = FUNC1(&commit, pb->repo, &list->item->oid)) < 0)
			return error;

		error = FUNC3(pb, FUNC2(commit));
		FUNC0(commit);

		if (error < 0)
			return error;
	}

	return 0;
}