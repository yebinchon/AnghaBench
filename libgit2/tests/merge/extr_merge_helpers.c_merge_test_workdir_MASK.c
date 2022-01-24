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
struct merge_index_entry {int /*<<< orphan*/  oid_str; int /*<<< orphan*/  path; } ;
struct TYPE_4__ {int /*<<< orphan*/  workdir; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  dircount ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 

int FUNC6(git_repository *repo, const struct merge_index_entry expected[], size_t expected_len)
{
	size_t actual_len = 0, i;
	git_oid actual_oid, expected_oid;
	git_buf wd = GIT_BUF_INIT;

	FUNC2(&wd, repo->workdir);
	FUNC5(&wd, 0, dircount, &actual_len);

	if (actual_len != expected_len)
		return 0;

	for (i = 0; i < expected_len; i++) {
		FUNC0(&actual_oid, repo, expected[i].path);
		FUNC4(&expected_oid, expected[i].oid_str);

		if (FUNC3(&actual_oid, &expected_oid) != 0)
			return 0;
	}

	FUNC1(&wd);

	return 1;
}