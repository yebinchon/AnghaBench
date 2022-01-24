#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_revwalk ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  to; int /*<<< orphan*/  from; } ;
typedef  TYPE_1__ git_revspec ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int GIT_EINVALIDSPEC ; 
 int GIT_REVPARSE_MERGE_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(git_repository *repo, git_revwalk *walk, const char *range, int hide)
{
	git_revspec revspec;
	int error = 0;

	if ((error = FUNC2(&revspec, repo, range)))
		return error;

	if (revspec.flags & GIT_REVPARSE_MERGE_BASE) {
		/* TODO: support "<commit>...<commit>" */
		return GIT_EINVALIDSPEC;
	}

	if ((error = FUNC3(walk, FUNC1(revspec.from), !hide)))
		goto out;

	error = FUNC3(walk, FUNC1(revspec.to), hide);

out:
	FUNC0(revspec.from);
	FUNC0(revspec.to);
	return error;
}