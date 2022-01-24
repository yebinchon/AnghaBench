#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  oid ;
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_6__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; TYPE_2__ map; TYPE_1__* file; int /*<<< orphan*/  repo; } ;
typedef  TYPE_3__ git_diff_file_content ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  id; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_DIFF_FLAG_VALID_ID ; 
 int /*<<< orphan*/  GIT_DIFF_FLAG__FREE_DATA ; 
 int GIT_EEXISTS ; 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_UNSPECIFIED ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(
	git_diff_file_content *fc, bool check_status)
{
	char oid[GIT_OID_HEXSZ+1];
	git_buf content = GIT_BUF_INIT;
	const char *status = "";

	if (check_status) {
		int error = 0;
		git_submodule *sm = NULL;
		unsigned int sm_status = 0;
		const git_oid *sm_head;

		if ((error = FUNC9(&sm, fc->repo, fc->file->path)) < 0) {
			/* GIT_EEXISTS means a "submodule" that has not been git added */
			if (error == GIT_EEXISTS) {
				FUNC4();
				error = 0;
			}
			return error;
		}

		if ((error = FUNC10(&sm_status, fc->repo, fc->file->path, GIT_SUBMODULE_IGNORE_UNSPECIFIED)) < 0) {
			FUNC7(sm);
			return error;
		}

		/* update OID if we didn't have it previously */
		if ((fc->file->flags & GIT_DIFF_FLAG_VALID_ID) == 0 &&
			((sm_head = FUNC11(sm)) != NULL ||
			 (sm_head = FUNC8(sm)) != NULL))
		{
			FUNC5(&fc->file->id, sm_head);
			fc->file->flags |= GIT_DIFF_FLAG_VALID_ID;
		}

		if (FUNC0(sm_status))
			status = "-dirty";

		FUNC7(sm);
	}

	FUNC6(oid, sizeof(oid), &fc->file->id);
	if (FUNC3(&content, "Subproject commit %s%s\n", oid, status) < 0)
		return -1;

	fc->map.len  = FUNC2(&content);
	fc->map.data = FUNC1(&content);
	fc->flags |= GIT_DIFF_FLAG__FREE_DATA;

	return 0;
}