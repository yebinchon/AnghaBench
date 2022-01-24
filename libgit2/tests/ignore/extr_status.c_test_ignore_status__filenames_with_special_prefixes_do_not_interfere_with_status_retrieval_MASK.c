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
struct TYPE_4__ {int count; scalar_t__ status; } ;
typedef  TYPE_1__ status_entry_single ;
typedef  int /*<<< orphan*/  st ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 scalar_t__ GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  cb_status__single ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC11(void)
{
	status_entry_single st;
	char *test_cases[] = {
		"!file",
		"#blah",
		"[blah]",
		"[attr]",
		"[attr]blah",
		NULL
	};
	int i;

	for (i = 0; *(test_cases + i) != NULL; i++) {
		git_buf file = GIT_BUF_INIT;
		char *file_name = *(test_cases + i);
		git_repository *repo = FUNC4("empty_standard_repo");

		FUNC2(FUNC7(&file, "empty_standard_repo", file_name));
		FUNC1(FUNC5(&file), "Please don't ignore me!");

		FUNC10(&st, 0, sizeof(st));
		FUNC2(FUNC9(repo, cb_status__single, &st));
		FUNC0(st.count == 1);
		FUNC0(st.status == GIT_STATUS_WT_NEW);

		FUNC2(FUNC8(&st.status, repo, file_name));
		FUNC0(st.status == GIT_STATUS_WT_NEW);

		FUNC3();
		FUNC6(&file);
	}
}