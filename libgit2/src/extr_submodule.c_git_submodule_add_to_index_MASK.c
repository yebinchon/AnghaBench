#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
typedef  void* int32_t ;
struct TYPE_17__ {int flags; int /*<<< orphan*/  wd_oid; int /*<<< orphan*/  index_oid; int /*<<< orphan*/  path; int /*<<< orphan*/  repo; } ;
typedef  TYPE_3__ git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_16__ {scalar_t__ nanoseconds; void* seconds; } ;
struct TYPE_15__ {scalar_t__ nanoseconds; void* seconds; } ;
struct TYPE_18__ {TYPE_2__ mtime; TYPE_1__ ctime; int /*<<< orphan*/  id; int /*<<< orphan*/  path; } ;
typedef  TYPE_4__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_19__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_5__ git_buf ;
typedef  int /*<<< orphan*/  entry ;

/* Variables and functions */
 TYPE_5__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_SUBMODULE ; 
 int GIT_INDEX_CAPABILITY_NO_FILEMODE ; 
 int GIT_SUBMODULE_STATUS__WD_OID_VALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,struct stat*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ **,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,struct stat*) ; 

int FUNC18(git_submodule *sm, int write_index)
{
	int error;
	git_repository *sm_repo = NULL;
	git_index *index;
	git_buf path = GIT_BUF_INIT;
	git_commit *head;
	git_index_entry entry;
	struct stat st;

	FUNC0(sm);

	/* force reload of wd OID by git_submodule_open */
	sm->flags = sm->flags & ~GIT_SUBMODULE_STATUS__WD_OID_VALID;

	if ((error = FUNC13(&index, sm->repo)) < 0 ||
		(error = FUNC2(
			&path, FUNC14(sm->repo), sm->path)) < 0 ||
		(error = FUNC15(&sm_repo, sm)) < 0)
		goto cleanup;

	/* read stat information for submodule working directory */
	if (FUNC17(path.ptr, &st) < 0) {
		FUNC6(GIT_ERROR_SUBMODULE,
			"cannot add submodule without working directory");
		error = -1;
		goto cleanup;
	}

	FUNC16(&entry, 0, sizeof(entry));
	entry.path = sm->path;
	FUNC9(
		&entry, &st, !(FUNC8(index) & GIT_INDEX_CAPABILITY_NO_FILEMODE));

	/* calling git_submodule_open will have set sm->wd_oid if possible */
	if ((sm->flags & GIT_SUBMODULE_STATUS__WD_OID_VALID) == 0) {
		FUNC6(GIT_ERROR_SUBMODULE,
			"cannot add submodule without HEAD to index");
		error = -1;
		goto cleanup;
	}
	FUNC11(&entry.id, &sm->wd_oid);

	if ((error = FUNC4(&head, sm_repo, &sm->wd_oid)) < 0)
		goto cleanup;

	entry.ctime.seconds = (int32_t)FUNC5(head);
	entry.ctime.nanoseconds = 0;
	entry.mtime.seconds = (int32_t)FUNC5(head);
	entry.mtime.nanoseconds = 0;

	FUNC3(head);

	/* add it */
	error = FUNC7(index, &entry);

	/* write it, if requested */
	if (!error && write_index) {
		error = FUNC10(index);

		if (!error)
			FUNC11(&sm->index_oid, &sm->wd_oid);
	}

cleanup:
	FUNC12(sm_repo);
	FUNC1(&path);
	return error;
}