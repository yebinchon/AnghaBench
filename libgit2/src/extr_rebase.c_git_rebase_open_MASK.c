#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_rebase_options ;
struct TYPE_16__ {int type; int head_detached; int /*<<< orphan*/  orig_head_name; int /*<<< orphan*/  onto_id; int /*<<< orphan*/  orig_head_id; int /*<<< orphan*/  state_path; int /*<<< orphan*/ * repo; } ;
typedef  TYPE_1__ git_rebase ;
struct TYPE_17__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_REBASE ; 
#define  GIT_REBASE_TYPE_APPLY 130 
#define  GIT_REBASE_TYPE_INTERACTIVE 129 
#define  GIT_REBASE_TYPE_MERGE 128 
 int GIT_REBASE_TYPE_NONE ; 
 int /*<<< orphan*/  HEAD_FILE ; 
 int /*<<< orphan*/  HEAD_NAME_FILE ; 
 int /*<<< orphan*/  ONTO_FILE ; 
 int /*<<< orphan*/  ORIG_DETACHED_HEAD ; 
 int /*<<< orphan*/  ORIG_HEAD_FILE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__**,int /*<<< orphan*/  const*) ; 
 int FUNC15 (int /*<<< orphan*/  const*) ; 
 int FUNC16 (TYPE_1__*) ; 
 int FUNC17 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC19(
	git_rebase **out,
	git_repository *repo,
	const git_rebase_options *given_opts)
{
	git_rebase *rebase;
	git_buf path = GIT_BUF_INIT, orig_head_name = GIT_BUF_INIT,
		orig_head_id = GIT_BUF_INIT, onto_id = GIT_BUF_INIT;
	size_t state_path_len;
	int error;

	FUNC1(repo);

	if ((error = FUNC15(given_opts)) < 0)
		return error;

	if (FUNC14(&rebase, given_opts) < 0)
		return -1;

	rebase->repo = repo;

	if ((error = FUNC17(&rebase->type, &rebase->state_path, repo)) < 0)
		goto done;

	if (rebase->type == GIT_REBASE_TYPE_NONE) {
		FUNC9(GIT_ERROR_REBASE, "there is no rebase in progress");
		error = GIT_ENOTFOUND;
		goto done;
	}

	if ((error = FUNC6(&path, rebase->state_path)) < 0)
		goto done;

	state_path_len = FUNC5(&path);

	if ((error = FUNC4(&path, path.ptr, HEAD_NAME_FILE)) < 0 ||
		(error = FUNC10(&orig_head_name, path.ptr)) < 0)
		goto done;

	FUNC7(&orig_head_name);

	if (FUNC18(ORIG_DETACHED_HEAD, orig_head_name.ptr) == 0)
		rebase->head_detached = 1;

	FUNC8(&path, state_path_len);

	if ((error = FUNC4(&path, path.ptr, ORIG_HEAD_FILE)) < 0)
		goto done;

	if (!FUNC12(path.ptr)) {
		/* Previous versions of git.git used 'head' here; support that. */
		FUNC8(&path, state_path_len);

		if ((error = FUNC4(&path, path.ptr, HEAD_FILE)) < 0)
			goto done;
	}

	if ((error = FUNC10(&orig_head_id, path.ptr)) < 0)
		goto done;

	FUNC7(&orig_head_id);

	if ((error = FUNC11(&rebase->orig_head_id, orig_head_id.ptr)) < 0)
		goto done;

	FUNC8(&path, state_path_len);

	if ((error = FUNC4(&path, path.ptr, ONTO_FILE)) < 0 ||
		(error = FUNC10(&onto_id, path.ptr)) < 0)
		goto done;

	FUNC7(&onto_id);

	if ((error = FUNC11(&rebase->onto_id, onto_id.ptr)) < 0)
		goto done;

	if (!rebase->head_detached)
		rebase->orig_head_name = FUNC2(&orig_head_name);

	switch (rebase->type) {
	case GIT_REBASE_TYPE_INTERACTIVE:
		FUNC9(GIT_ERROR_REBASE, "interactive rebase is not supported");
		error = -1;
		break;
	case GIT_REBASE_TYPE_MERGE:
		error = FUNC16(rebase);
		break;
	case GIT_REBASE_TYPE_APPLY:
		FUNC9(GIT_ERROR_REBASE, "patch application rebase is not supported");
		error = -1;
		break;
	default:
		FUNC0();
	}

done:
	if (error == 0)
		*out = rebase;
	else
		FUNC13(rebase);

	FUNC3(&path);
	FUNC3(&orig_head_name);
	FUNC3(&orig_head_id);
	FUNC3(&onto_id);
	return error;
}