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
struct TYPE_3__ {int flags; int /*<<< orphan*/  to; int /*<<< orphan*/  from; } ;
typedef  TYPE_1__ git_revspec ;
typedef  scalar_t__ git_revparse_mode_t ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 scalar_t__ GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC6(
	const char *spec,
	const char *expected_left,
	const char *expected_right,
	git_revparse_mode_t expected_flags,
	git_repository *repo)
{
	git_revspec revspec;
	int error = FUNC5(&revspec, repo, spec);

	if (expected_left) {
		char str[64] = {0};
		FUNC0(0, error);
		FUNC4(str, FUNC3(revspec.from));
		FUNC1(str, expected_left);
		FUNC2(revspec.from);
	} else {
		FUNC0(GIT_ENOTFOUND, error);
	}

	if (expected_right) {
		char str[64] = {0};
		FUNC4(str, FUNC3(revspec.to));
		FUNC1(str, expected_right);
		FUNC2(revspec.to);
	}

	if (expected_flags)
		FUNC0(expected_flags, revspec.flags);
}