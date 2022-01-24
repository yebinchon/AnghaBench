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
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_3__ {char** expect; int cancel_after; int expect_idx; } ;
typedef  TYPE_1__ check_walkup_info ;

/* Variables and functions */
 int /*<<< orphan*/  CANCEL_VALUE ; 
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  check_one_walkup_step ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC4(void)
{
	git_buf p = GIT_BUF_INIT;
	int cancel[] = { 3, 2, 1, 0 };
	char *expect[] = {
		"/a/b/c/d/e/", "/a/b/c/d/", "/a/b/c/", "[CANCEL]", NULL,
		"/a/b/c/d/e", "/a/b/c/d/", "[CANCEL]", NULL,
		"/a/b/c/d/e", "[CANCEL]", NULL,
		"[CANCEL]", NULL,
		NULL
	};
	char *root[] = { NULL, NULL, "/", "", NULL };
	int i, j;
	check_walkup_info info;

	info.expect = expect;

	for (i = 0, j = 0; expect[i] != NULL; i++, j++) {

		FUNC2(&p, expect[i]);

		info.cancel_after = cancel[j];
		info.expect_idx = i;

		FUNC0(
			CANCEL_VALUE,
			FUNC3(&p, root[j], check_one_walkup_step, &info)
		);

		/* skip to next run of expectations */
		while (expect[i] != NULL) i++;
	}

	FUNC1(&p);
}