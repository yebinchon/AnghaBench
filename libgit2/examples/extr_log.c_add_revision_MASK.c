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
struct log_state {int /*<<< orphan*/  repo; } ;
struct TYPE_3__ {int flags; int /*<<< orphan*/ * from; int /*<<< orphan*/ * to; } ;
typedef  TYPE_1__ git_revspec ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int GIT_REVPARSE_MERGE_BASE ; 
 int GIT_REVPARSE_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct log_state*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct log_state *s, const char *revstr)
{
	git_revspec revs;
	int hide = 0;

	if (!revstr) {
		FUNC6(s, NULL, hide);
		return 0;
	}

	if (*revstr == '^') {
		revs.flags = GIT_REVPARSE_SINGLE;
		hide = !hide;

		if (FUNC5(&revs.from, s->repo, revstr + 1) < 0)
			return -1;
	} else if (FUNC4(&revs, s->repo, revstr) < 0)
		return -1;

	if ((revs.flags & GIT_REVPARSE_SINGLE) != 0)
		FUNC6(s, revs.from, hide);
	else {
		FUNC6(s, revs.to, hide);

		if ((revs.flags & GIT_REVPARSE_MERGE_BASE) != 0) {
			git_oid base;
			FUNC0(FUNC1(&base, s->repo,
				FUNC2(revs.from), FUNC2(revs.to)),
				"Could not find merge base", revstr);
			FUNC0(
				FUNC3(&revs.to, s->repo, &base, GIT_OBJECT_COMMIT),
				"Could not find merge base commit", NULL);

			FUNC6(s, revs.to, hide);
		}

		FUNC6(s, revs.from, !hide);
	}

	return 0;
}