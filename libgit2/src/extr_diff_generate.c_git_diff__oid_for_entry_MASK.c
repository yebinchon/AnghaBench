#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  const git_oid ;
struct TYPE_18__ {int /*<<< orphan*/  const id; scalar_t__ mode; scalar_t__ file_size; int /*<<< orphan*/  path; } ;
typedef  TYPE_3__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_filter_list ;
struct TYPE_16__ {int /*<<< orphan*/  oid_calculations; int /*<<< orphan*/  stat_calls; } ;
struct TYPE_17__ {int /*<<< orphan*/  repo; TYPE_1__ perf; } ;
struct TYPE_19__ {int diffcaps; int index_updated; TYPE_2__ base; } ;
typedef  TYPE_4__ git_diff_generated ;
struct TYPE_20__ {scalar_t__ type; } ;
typedef  TYPE_5__ git_diff ;
struct TYPE_21__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_6__ git_buf ;

/* Variables and functions */
 TYPE_6__ GIT_BUF_INIT ; 
 int GIT_DIFFCAPS_TRUST_MODE_BITS ; 
 scalar_t__ GIT_DIFF_TYPE_GENERATED ; 
 int /*<<< orphan*/  GIT_ERROR_NOMEMORY ; 
 int /*<<< orphan*/  GIT_FILTER_ALLOW_UNSAFE ; 
 int /*<<< orphan*/  GIT_FILTER_TO_ODB ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 scalar_t__ FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,struct stat*,int) ; 
 int FUNC13 (int /*<<< orphan*/  const*,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,struct stat*) ; 

int FUNC27(
	git_oid *out,
	git_diff *d,
	const git_index_entry *src,
	uint16_t mode,
	const git_oid *update_match)
{
	git_diff_generated *diff;
	git_buf full_path = GIT_BUF_INIT;
	git_index_entry entry = *src;
	git_filter_list *fl = NULL;
	int error = 0;

	FUNC2(d->type == GIT_DIFF_TYPE_GENERATED);
	diff = (git_diff_generated *)d;

	FUNC24(out, 0, sizeof(*out));

	if (FUNC5(&full_path,
		FUNC19(diff->base.repo), entry.path) < 0)
		return -1;

	if (!mode) {
		struct stat st;

		diff->base.perf.stat_calls++;

		if (FUNC26(full_path.ptr, &st) < 0) {
			error = FUNC17(errno, entry.path, "stat");
			FUNC4(&full_path);
			return error;
		}

		FUNC12(&entry,
			&st, (diff->diffcaps & GIT_DIFFCAPS_TRUST_MODE_BITS) != 0);
	}

	/* calculate OID for file if possible */
	if (FUNC0(mode)) {
		git_submodule *sm;

		if (!FUNC21(&sm, diff->base.repo, entry.path)) {
			const git_oid *sm_oid = FUNC22(sm);
			if (sm_oid)
				FUNC15(out, sm_oid);
			FUNC20(sm);
		} else {
			/* if submodule lookup failed probably just in an intermediate
			 * state where some init hasn't happened, so ignore the error
			 */
			FUNC6();
		}
	} else if (FUNC1(mode)) {
		error = FUNC14(out, full_path.ptr);
		diff->base.perf.oid_calculations++;
	} else if (!FUNC3(entry.file_size)) {
		FUNC7(GIT_ERROR_NOMEMORY, "file size overflow (for 32-bits) on '%s'",
			entry.path);
		error = -1;
	} else if (!(error = FUNC9(&fl,
		diff->base.repo, NULL, entry.path,
		GIT_FILTER_TO_ODB, GIT_FILTER_ALLOW_UNSAFE)))
	{
		int fd = FUNC10(full_path.ptr);
		if (fd < 0)
			error = fd;
		else {
			error = FUNC13(
				out, fd, (size_t)entry.file_size, GIT_OBJECT_BLOB, fl);
			FUNC25(fd);
			diff->base.perf.oid_calculations++;
		}

		FUNC8(fl);
	}

	/* update index for entry if requested */
	if (!error && update_match && FUNC16(out, update_match)) {
		git_index *idx;
		git_index_entry updated_entry;

		FUNC23(&updated_entry, &entry, sizeof(git_index_entry));
		updated_entry.mode = mode;
		FUNC15(&updated_entry.id, out);

		if (!(error = FUNC18(&idx,
			diff->base.repo))) {
			error = FUNC11(idx, &updated_entry);
			diff->index_updated = true;
		}
 	}

	FUNC4(&full_path);
	return error;
}