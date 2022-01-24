#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_indexer ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC9(void)
{
	git_indexer *idx = NULL;
	git_buf path = GIT_BUF_INIT;
	git_buf first_tmp_file = GIT_BUF_INIT;

	/* Precondition: there are no temporary files. */
	FUNC1(FUNC6(&path, FUNC2()));
	FUNC1(FUNC3(&first_tmp_file, &path));
	FUNC4(&path);
	FUNC0(FUNC5(&first_tmp_file) == 0);

	FUNC1(FUNC8(&idx, ".", 0, NULL, NULL));
	FUNC7(idx);

	FUNC1(FUNC6(&path, FUNC2()));
	FUNC1(FUNC3(&first_tmp_file, &path));
	FUNC4(&path);
	FUNC0(FUNC5(&first_tmp_file) == 0);
	FUNC4(&first_tmp_file);
}