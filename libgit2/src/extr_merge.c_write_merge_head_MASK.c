#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  gitdir; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_filebuf ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;
struct TYPE_11__ {int /*<<< orphan*/  id_str; } ;
typedef  TYPE_3__ git_annotated_commit ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_FILEBUF_CREATE_LEADING_DIRS ; 
 int /*<<< orphan*/  GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  GIT_MERGE_FILE_MODE ; 
 int /*<<< orphan*/  GIT_MERGE_HEAD_FILE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(
	git_repository *repo,
	const git_annotated_commit *heads[],
	size_t heads_len)
{
	git_filebuf file = GIT_FILEBUF_INIT;
	git_buf file_path = GIT_BUF_INIT;
	size_t i;
	int error = 0;

	FUNC0(repo && heads);

	if ((error = FUNC2(&file_path, repo->gitdir, GIT_MERGE_HEAD_FILE)) < 0 ||
		(error = FUNC5(&file, file_path.ptr, GIT_FILEBUF_CREATE_LEADING_DIRS, GIT_MERGE_FILE_MODE)) < 0)
		goto cleanup;

	for (i = 0; i < heads_len; i++) {
		if ((error = FUNC6(&file, "%s\n", heads[i]->id_str)) < 0)
			goto cleanup;
	}

	error = FUNC4(&file);

cleanup:
	if (error < 0)
		FUNC3(&file);

	FUNC1(&file_path);

	return error;
}