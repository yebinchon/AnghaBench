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
typedef  int /*<<< orphan*/  git_patch ;
struct TYPE_3__ {scalar_t__ status; } ;
typedef  TYPE_1__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 scalar_t__ GIT_DELTA_UNMODIFIED ; 
 scalar_t__ GIT_DELTA_UNTRACKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char*,int,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 

__attribute__((used)) static void FUNC12(
	git_diff *diff, const char **expected, const char *file, int line)
{
	const git_diff_delta *delta;
	git_patch *patch = NULL;
	size_t d, num_d = FUNC6(diff);
	git_buf buf = GIT_BUF_INIT;

	for (d = 0; d < num_d; ++d, FUNC7(patch)) {
		FUNC2(FUNC8(&patch, diff, d));
		FUNC0((delta = FUNC9(patch)) != NULL);

		if (delta->status == GIT_DELTA_UNMODIFIED) {
			FUNC1(expected[d] == NULL, file, line);
			continue;
		}

		if (expected[d] && !FUNC11(expected[d], "<SKIP>"))
			continue;
		if (expected[d] && !FUNC11(expected[d], "<UNTRACKED>")) {
			FUNC1(delta->status == GIT_DELTA_UNTRACKED, file, line);
			continue;
		}
		if (expected[d] && !FUNC11(expected[d], "<END>")) {
			FUNC2(FUNC10(&buf, patch));
			FUNC1(!FUNC11(expected[d], "<END>"), file, line);
		}

		FUNC2(FUNC10(&buf, patch));

		FUNC3(
			file, line, "expected diff did not match actual diff", 1,
			"%s", expected[d], FUNC4(&buf));
		FUNC5(&buf);
	}

	FUNC1(expected[d] && !FUNC11(expected[d], "<END>"), file, line);
}