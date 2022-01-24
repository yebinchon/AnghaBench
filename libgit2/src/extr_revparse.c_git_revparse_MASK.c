#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  from; int /*<<< orphan*/  flags; int /*<<< orphan*/  to; } ;
typedef  TYPE_1__ git_revspec ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_REVPARSE_MERGE_BASE ; 
 int /*<<< orphan*/  GIT_REVPARSE_RANGE ; 
 int /*<<< orphan*/  GIT_REVPARSE_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 char* FUNC7 (char const*,char*) ; 

int FUNC8(
	git_revspec *revspec,
	git_repository *repo,
	const char *spec)
{
	const char *dotdot;
	int error = 0;

	FUNC0(revspec && repo && spec);

	FUNC6(revspec, 0x0, sizeof(*revspec));

	if ((dotdot = FUNC7(spec, "..")) != NULL) {
		char *lstr;
		const char *rstr;
		revspec->flags = GIT_REVPARSE_RANGE;

		/*
		 * Following git.git, don't allow '..' because it makes command line
		 * arguments which can be either paths or revisions ambiguous when the
		 * path is almost certainly intended. The empty range '...' is still
		 * allowed.
		 */
		if (!FUNC2(spec, "..")) {
			FUNC4(GIT_ERROR_INVALID, "Invalid pattern '..'");
			return GIT_EINVALIDSPEC;
		}

		lstr = FUNC3(spec, dotdot - spec);
		rstr = dotdot + 2;
		if (dotdot[2] == '.') {
			revspec->flags |= GIT_REVPARSE_MERGE_BASE;
			rstr++;
		}

		error = FUNC5(
			&revspec->from,
			repo,
			*lstr == '\0' ? "HEAD" : lstr);

		if (!error) {
			error = FUNC5(
				&revspec->to,
				repo,
				*rstr == '\0' ? "HEAD" : rstr);
		}

		FUNC1((void*)lstr);
	} else {
		revspec->flags = GIT_REVPARSE_SINGLE;
		error = FUNC5(&revspec->from, repo, spec);
	}

	return error;
}