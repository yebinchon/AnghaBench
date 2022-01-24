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
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_13__ {char* path; int /*<<< orphan*/  id; int /*<<< orphan*/  file_size; } ;
typedef  TYPE_3__ git_index_entry ;
typedef  int /*<<< orphan*/  git_diff_generated ;
struct TYPE_12__ {int flags; void* mode; int /*<<< orphan*/  size; void* id_abbrev; int /*<<< orphan*/  id; } ;
struct TYPE_11__ {int flags; void* id_abbrev; int /*<<< orphan*/  id; void* mode; int /*<<< orphan*/  size; } ;
struct TYPE_14__ {int nfiles; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef  TYPE_4__ git_diff_delta ;
typedef  scalar_t__ git_delta_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ GIT_DELTA_UNMODIFIED ; 
 int GIT_DIFF_FLAG_EXISTS ; 
 int GIT_DIFF_FLAG_VALID_ID ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNMODIFIED ; 
 int /*<<< orphan*/  GIT_DIFF_REVERSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 void* GIT_OID_HEXSZ ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,scalar_t__,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(
	git_diff_generated *diff,
	git_delta_t status,
	const git_index_entry *old_entry,
	uint32_t old_mode,
	const git_index_entry *new_entry,
	uint32_t new_mode,
	const git_oid *new_id,
	const char *matched_pathspec)
{
	const git_oid *old_id = &old_entry->id;
	git_diff_delta *delta;
	const char *canonical_path = old_entry->path;

	if (status == GIT_DELTA_UNMODIFIED &&
		FUNC0(diff, GIT_DIFF_INCLUDE_UNMODIFIED))
		return 0;

	if (!new_id)
		new_id = &new_entry->id;

	if (FUNC1(diff, GIT_DIFF_REVERSE)) {
		uint32_t temp_mode = old_mode;
		const git_index_entry *temp_entry = old_entry;
		const git_oid *temp_id = old_id;

		old_entry = new_entry;
		new_entry = temp_entry;
		old_mode = new_mode;
		new_mode = temp_mode;
		old_id = new_id;
		new_id = temp_id;
	}

	delta = FUNC3(diff, status, canonical_path);
	FUNC2(delta);
	delta->nfiles = 2;

	if (!FUNC5(old_entry)) {
		delta->old_file.size = old_entry->file_size;
		delta->old_file.mode = old_mode;
		FUNC6(&delta->old_file.id, old_id);
		delta->old_file.id_abbrev = GIT_OID_HEXSZ;
		delta->old_file.flags |= GIT_DIFF_FLAG_VALID_ID |
			GIT_DIFF_FLAG_EXISTS;
	}

	if (!FUNC5(new_entry)) {
		FUNC6(&delta->new_file.id, new_id);
		delta->new_file.id_abbrev = GIT_OID_HEXSZ;
		delta->new_file.size = new_entry->file_size;
		delta->new_file.mode = new_mode;
		delta->old_file.flags |= GIT_DIFF_FLAG_EXISTS;
		delta->new_file.flags |= GIT_DIFF_FLAG_EXISTS;

		if (!FUNC7(&new_entry->id))
			delta->new_file.flags |= GIT_DIFF_FLAG_VALID_ID;
	}

	return FUNC4(diff, delta, matched_pathspec);
}