#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  gitdir; } ;
typedef  TYPE_1__ git_repository ;
struct TYPE_11__ {char* path; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_filebuf ;
struct TYPE_12__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_FILEBUF_APPEND ; 
 int /*<<< orphan*/  GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  GIT_MERGE_FILE_MODE ; 
 int /*<<< orphan*/  GIT_MERGE_MSG_FILE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,char const*) ; 

int FUNC11(
	git_repository *repo,
	git_index *index)
{
	git_filebuf file = GIT_FILEBUF_INIT;
	git_buf file_path = GIT_BUF_INIT;
	const char *last = NULL;
	size_t i;
	int error;

	if (!FUNC9(index))
		return 0;

	if ((error = FUNC1(&file_path, repo->gitdir, GIT_MERGE_MSG_FILE)) < 0 ||
		(error = FUNC4(&file, file_path.ptr, GIT_FILEBUF_APPEND, GIT_MERGE_FILE_MODE)) < 0)
		goto cleanup;

	FUNC5(&file, "\nConflicts:\n");

	for (i = 0; i < FUNC7(index); i++) {
		const git_index_entry *e = FUNC8(index, i);

		if (!FUNC6(e))
			continue;

		if (last == NULL || FUNC10(e->path, last) != 0)
			FUNC5(&file, "\t%s\n", e->path);

		last = e->path;
	}

	error = FUNC3(&file);

cleanup:
	if (error < 0)
		FUNC2(&file);

	FUNC0(&file_path);

	return error;
}