#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_12__ {scalar_t__ file_size; int /*<<< orphan*/  mode; int /*<<< orphan*/  id; int /*<<< orphan*/  mtime; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_13__ {scalar_t__ size; int /*<<< orphan*/  mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ git_diff_file ;
struct TYPE_14__ {int /*<<< orphan*/  diff; int /*<<< orphan*/  respect_filemode; int /*<<< orphan*/  index; int /*<<< orphan*/  repo; } ;
typedef  TYPE_3__ checkout_data ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_COMMIT ; 
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_UNSPECIFIED ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__ const*,TYPE_2__ const*) ; 

__attribute__((used)) static bool FUNC13(
	checkout_data *data,
	const git_diff_file *baseitem,
	const git_diff_file *newitem,
	const git_index_entry *wditem)
{
	git_oid oid;
	const git_index_entry *ie;

	/* handle "modified" submodule */
	if (wditem->mode == GIT_FILEMODE_COMMIT) {
		git_submodule *sm;
		unsigned int sm_status = 0;
		const git_oid *sm_oid = NULL;
		bool rval = false;

		if (FUNC8(&sm, data->repo, wditem->path) < 0) {
			FUNC3();
			return true;
		}

		if (FUNC9(&sm_status, data->repo, wditem->path, GIT_SUBMODULE_IGNORE_UNSPECIFIED) < 0 ||
			FUNC0(sm_status))
			rval = true;
		else if ((sm_oid = FUNC10(sm)) == NULL)
			rval = false;
		else
			rval = (FUNC6(&baseitem->id, sm_oid) != 0);

		FUNC7(sm);
		return rval;
	}

	/*
	 * Look at the cache to decide if the workdir is modified: if the
	 * cache contents match the workdir contents, then we do not need
	 * to examine the working directory directly, instead we can
	 * examine the cache to see if _it_ has been modified.  This allows
	 * us to avoid touching the disk.
	 */
	ie = FUNC4(data->index, wditem->path, 0);

	if (ie != NULL &&
		FUNC5(&wditem->mtime, &ie->mtime) &&
		wditem->file_size == ie->file_size &&
		!FUNC11(wditem->mode, ie->mode, data->respect_filemode)) {

		/* The workdir is modified iff the index entry is modified */
		return !FUNC12(&ie->id, baseitem, newitem) ||
			FUNC11(baseitem->mode, ie->mode, data->respect_filemode);
	}

	/* depending on where base is coming from, we may or may not know
	 * the actual size of the data, so we can't rely on this shortcut.
	 */
	if (baseitem->size && wditem->file_size != baseitem->size)
		return true;

	/* if the workdir item is a directory, it cannot be a modified file */
	if (FUNC1(wditem->mode))
		return false;

	if (FUNC11(baseitem->mode, wditem->mode, data->respect_filemode))
		return true;

	if (FUNC2(&oid, data->diff, wditem, wditem->mode, NULL) < 0)
		return false;

	/* Allow the checkout if the workdir is not modified *or* if the checkout
	 * target's contents are already in the working directory.
	 */
	return !FUNC12(&oid, baseitem, newitem);
}