#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_10__ {int /*<<< orphan*/  hide_cb_payload; scalar_t__ (* hide_cb ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ git_revwalk ;
struct TYPE_11__ {int /*<<< orphan*/  time; int /*<<< orphan*/  oid; scalar_t__ uninteresting; } ;
typedef  TYPE_2__ git_commit_list_node ;
typedef  int /*<<< orphan*/  git_commit_list ;
struct TYPE_12__ {int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT64_MAX ; 
 int SLOP ; 
 int FUNC0 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 TYPE_6__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(git_commit_list **out, git_revwalk *walk, git_commit_list *commits)
{
	int error, slop = SLOP;
	int64_t time = INT64_MAX;
	git_commit_list *list = commits;
	git_commit_list *newlist = NULL;
	git_commit_list **p = &newlist;

	while (list) {
		git_commit_list_node *commit = FUNC3(&list);

		if ((error = FUNC0(walk, commit, &list)) < 0)
			return error;

		if (commit->uninteresting) {
			FUNC4(commit);

			slop = FUNC5(list, time, slop);
			if (slop)
				continue;

			break;
		}

		if (walk->hide_cb && walk->hide_cb(&commit->oid, walk->hide_cb_payload))
			continue;

		time = commit->time;
		p = &FUNC2(commit, p)->next;
	}

	FUNC1(&list);
	*out = newlist;
	return 0;
}