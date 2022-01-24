#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int flags; int /*<<< orphan*/  id; int /*<<< orphan*/  file_size; int /*<<< orphan*/  mode; int /*<<< orphan*/  path; } ;
typedef  TYPE_3__ git_index_entry ;
typedef  int /*<<< orphan*/  git_diff_generated ;
struct TYPE_12__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  id; void* id_abbrev; int /*<<< orphan*/  size; int /*<<< orphan*/  mode; } ;
struct TYPE_11__ {int /*<<< orphan*/  flags; void* id_abbrev; int /*<<< orphan*/  id; int /*<<< orphan*/  size; int /*<<< orphan*/  mode; } ;
struct TYPE_14__ {int nfiles; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef  TYPE_4__ git_diff_delta ;
typedef  scalar_t__ git_delta_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ GIT_DELTA_IGNORED ; 
 scalar_t__ GIT_DELTA_MODIFIED ; 
 scalar_t__ GIT_DELTA_UNREADABLE ; 
 scalar_t__ GIT_DELTA_UNTRACKED ; 
 int /*<<< orphan*/  GIT_DIFF_FLAG_EXISTS ; 
 int /*<<< orphan*/  GIT_DIFF_FLAG_VALID_ID ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_IGNORED ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNREADABLE ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNTRACKED ; 
 int /*<<< orphan*/  GIT_DIFF_REVERSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int GIT_INDEX_ENTRY_VALID ; 
 void* GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(
	git_diff_generated *diff,
	git_delta_t status,
	const git_index_entry *oitem,
	const git_index_entry *nitem)
{
	const git_index_entry *entry = nitem;
	bool has_old = false;
	git_diff_delta *delta;
	const char *matched_pathspec;

	FUNC3((oitem != NULL) ^ (nitem != NULL));

	if (oitem) {
		entry = oitem;
		has_old = true;
	}

	if (FUNC1(diff, GIT_DIFF_REVERSE))
		has_old = !has_old;

	if ((entry->flags & GIT_INDEX_ENTRY_VALID) != 0)
		return 0;

	if (status == GIT_DELTA_IGNORED &&
		FUNC0(diff, GIT_DIFF_INCLUDE_IGNORED))
		return 0;

	if (status == GIT_DELTA_UNTRACKED &&
		FUNC0(diff, GIT_DIFF_INCLUDE_UNTRACKED))
		return 0;

	if (status == GIT_DELTA_UNREADABLE &&
		FUNC0(diff, GIT_DIFF_INCLUDE_UNREADABLE))
		return 0;

	if (!FUNC6(&matched_pathspec, diff, entry))
		return 0;

	delta = FUNC4(diff, status, entry->path);
	FUNC2(delta);

	/* This fn is just for single-sided diffs */
	FUNC3(status != GIT_DELTA_MODIFIED);
	delta->nfiles = 1;

	if (has_old) {
		delta->old_file.mode = entry->mode;
		delta->old_file.size = entry->file_size;
		delta->old_file.flags |= GIT_DIFF_FLAG_EXISTS;
		FUNC7(&delta->old_file.id, &entry->id);
		delta->old_file.id_abbrev = GIT_OID_HEXSZ;
	} else /* ADDED, IGNORED, UNTRACKED */ {
		delta->new_file.mode = entry->mode;
		delta->new_file.size = entry->file_size;
		delta->new_file.flags |= GIT_DIFF_FLAG_EXISTS;
		FUNC7(&delta->new_file.id, &entry->id);
		delta->new_file.id_abbrev = GIT_OID_HEXSZ;
	}

	delta->old_file.flags |= GIT_DIFF_FLAG_VALID_ID;

	if (has_old || !FUNC8(&delta->new_file.id))
		delta->new_file.flags |= GIT_DIFF_FLAG_VALID_ID;

	return FUNC5(diff, delta, matched_pathspec);
}