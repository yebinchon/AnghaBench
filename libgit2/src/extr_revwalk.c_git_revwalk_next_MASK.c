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
struct TYPE_8__ {int (* get_next ) (TYPE_2__**,TYPE_1__*) ;int /*<<< orphan*/  walking; } ;
typedef  TYPE_1__ git_revwalk ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_9__ {int /*<<< orphan*/  oid; } ;
typedef  TYPE_2__ git_commit_list_node ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_2__**,TYPE_1__*) ; 

int FUNC6(git_oid *oid, git_revwalk *walk)
{
	int error;
	git_commit_list_node *next;

	FUNC0(walk && oid);

	if (!walk->walking) {
		if ((error = FUNC4(walk)) < 0)
			return error;
	}

	error = walk->get_next(&next, walk);

	if (error == GIT_ITEROVER) {
		FUNC3(walk);
		FUNC1();
		return GIT_ITEROVER;
	}

	if (!error)
		FUNC2(oid, &next->oid);

	return error;
}