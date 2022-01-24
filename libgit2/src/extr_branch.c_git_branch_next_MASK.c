#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_reference ;
typedef  int git_branch_t ;
typedef  int /*<<< orphan*/  git_branch_iterator ;
struct TYPE_7__ {int flags; int /*<<< orphan*/  iter; } ;
typedef  TYPE_2__ branch_iter ;

/* Variables and functions */
 int GIT_BRANCH_LOCAL ; 
 int GIT_BRANCH_REMOTE ; 
 int /*<<< orphan*/  GIT_REFS_HEADS_DIR ; 
 int /*<<< orphan*/  GIT_REFS_REMOTES_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__**,int /*<<< orphan*/ ) ; 

int FUNC3(git_reference **out, git_branch_t *out_type, git_branch_iterator *_iter)
{
	branch_iter *iter = (branch_iter *) _iter;
	git_reference *ref;
	int error;

	while ((error = FUNC2(&ref, iter->iter)) == 0) {
		if ((iter->flags & GIT_BRANCH_LOCAL) &&
		    !FUNC0(ref->name, GIT_REFS_HEADS_DIR)) {
			*out = ref;
			*out_type = GIT_BRANCH_LOCAL;

			return 0;
		} else  if ((iter->flags & GIT_BRANCH_REMOTE) &&
			    !FUNC0(ref->name, GIT_REFS_REMOTES_DIR)) {
			*out = ref;
			*out_type = GIT_BRANCH_REMOTE;

			return 0;
		} else {
			FUNC1(ref);
		}
	}

	return error;
}