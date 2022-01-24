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
typedef  int /*<<< orphan*/  git_vector ;
struct TYPE_3__ {char** strings; int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_VECTOR_INIT ; 
 int /*<<< orphan*/  git__free ; 
 int /*<<< orphan*/  git__strcmp_cb ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remote_list_cb ; 

int FUNC6(git_strarray *remotes_list, git_repository *repo)
{
	int error;
	git_config *cfg;
	git_vector list = GIT_VECTOR_INIT;

	if ((error = FUNC1(&cfg, repo)) < 0)
		return error;

	if ((error = FUNC4(&list, 4, git__strcmp_cb)) < 0)
		return error;

	error = FUNC0(
		cfg, "^remote\\..*\\.(push)?url$", remote_list_cb, &list);

	if (error < 0) {
		FUNC3(&list);
		return error;
	}

	FUNC5(&list, git__free);

	remotes_list->strings =
		(char **)FUNC2(&remotes_list->count, NULL, &list);

	return 0;
}