#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int uninteresting; } ;
typedef  TYPE_1__ git_revwalk__push_options ;
struct TYPE_10__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_2__ git_revwalk ;
struct TYPE_11__ {int flags; int /*<<< orphan*/  to; int /*<<< orphan*/  from; } ;
typedef  TYPE_3__ git_revspec ;

/* Variables and functions */
 int GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int GIT_REVPARSE_MERGE_BASE ; 
 TYPE_1__ GIT_REVWALK__PUSH_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC5(git_revwalk *walk, const char *range)
{
	git_revwalk__push_options opts = GIT_REVWALK__PUSH_OPTIONS_INIT;
	git_revspec revspec;
	int error = 0;

	if ((error = FUNC3(&revspec, walk->repo, range)))
		return error;

	if (!revspec.to) {
		FUNC0(GIT_ERROR_INVALID, "invalid revspec: range not provided");
		error = GIT_EINVALIDSPEC;
		goto out;
	}

	if (revspec.flags & GIT_REVPARSE_MERGE_BASE) {
		/* TODO: support "<commit>...<commit>" */
		FUNC0(GIT_ERROR_INVALID, "symmetric differences not implemented in revwalk");
		error = GIT_EINVALIDSPEC;
		goto out;
	}

	opts.uninteresting = 1;
	if ((error = FUNC4(walk, FUNC2(revspec.from), &opts)))
		goto out;

	opts.uninteresting = 0;
	error = FUNC4(walk, FUNC2(revspec.to), &opts);

out:
	FUNC1(revspec.from);
	FUNC1(revspec.to);
	return error;
}