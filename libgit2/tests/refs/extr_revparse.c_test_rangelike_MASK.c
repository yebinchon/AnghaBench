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
struct TYPE_3__ {int /*<<< orphan*/  to; int /*<<< orphan*/  from; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_revspec ;
typedef  int git_revparse_mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC7(const char *rangelike,
						   const char *expected_left,
						   const char *expected_right,
						   git_revparse_mode_t expected_revparseflags)
{
	char objstr[64] = {0};
	git_revspec revspec;
	int error;

	error = FUNC6(&revspec, g_repo, rangelike);

	if (expected_left != NULL) {
		FUNC1(0, error);
		FUNC1(revspec.flags, expected_revparseflags);
		FUNC5(objstr, FUNC4(revspec.from));
		FUNC2(objstr, expected_left);
		FUNC5(objstr, FUNC4(revspec.to));
		FUNC2(objstr, expected_right);
	} else
		FUNC0(error != 0);

	FUNC3(revspec.from);
	FUNC3(revspec.to);
}