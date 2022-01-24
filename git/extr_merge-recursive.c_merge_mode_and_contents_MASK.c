#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct merge_options {char const* branch1; int recursive_variant; } ;
struct TYPE_4__ {int mode; int /*<<< orphan*/  oid; } ;
struct merge_file_info {int merge; int clean; TYPE_1__ blob; } ;
struct diff_filespec {int mode; int /*<<< orphan*/  oid; int /*<<< orphan*/  path; } ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ mmbuffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  MERGE_VARIANT_NORMAL 130 
#define  MERGE_VARIANT_OURS 129 
#define  MERGE_VARIANT_THEIRS 128 
 int S_IFMT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  blob_type ; 
 int FUNC5 (struct merge_options*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct merge_options*,TYPE_2__*,struct diff_filespec const*,struct diff_filespec const*,struct diff_filespec const*,char const*,char const*,int const) ; 
 int FUNC8 (struct merge_options*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct merge_options*,int,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct merge_options *opt,
				   const struct diff_filespec *o,
				   const struct diff_filespec *a,
				   const struct diff_filespec *b,
				   const char *filename,
				   const char *branch1,
				   const char *branch2,
				   const int extra_marker_size,
				   struct merge_file_info *result)
{
	if (opt->branch1 != branch1) {
		/*
		 * It's weird getting a reverse merge with HEAD on the bottom
		 * side of the conflict markers and the other branch on the
		 * top.  Fix that.
		 */
		return FUNC13(opt, o, b, a,
					       filename,
					       branch2, branch1,
					       extra_marker_size, result);
	}

	result->merge = 0;
	result->clean = 1;

	if ((S_IFMT & a->mode) != (S_IFMT & b->mode)) {
		result->clean = 0;
		if (FUNC3(a->mode)) {
			result->blob.mode = a->mode;
			FUNC10(&result->blob.oid, &a->oid);
		} else {
			result->blob.mode = b->mode;
			FUNC10(&result->blob.oid, &b->oid);
		}
	} else {
		if (!FUNC9(&a->oid, &o->oid) && !FUNC9(&b->oid, &o->oid))
			result->merge = 1;

		/*
		 * Merge modes
		 */
		if (a->mode == b->mode || a->mode == o->mode)
			result->blob.mode = b->mode;
		else {
			result->blob.mode = a->mode;
			if (b->mode != o->mode) {
				result->clean = 0;
				result->merge = 1;
			}
		}

		if (FUNC9(&a->oid, &b->oid) || FUNC9(&a->oid, &o->oid))
			FUNC10(&result->blob.oid, &b->oid);
		else if (FUNC9(&b->oid, &o->oid))
			FUNC10(&result->blob.oid, &a->oid);
		else if (FUNC3(a->mode)) {
			mmbuffer_t result_buf;
			int ret = 0, merge_status;

			merge_status = FUNC7(opt, &result_buf, o, a, b,
						  branch1, branch2,
						  extra_marker_size);

			if ((merge_status < 0) || !result_buf.ptr)
				ret = FUNC5(opt, FUNC4("Failed to execute internal merge"));

			if (!ret &&
			    FUNC12(result_buf.ptr, result_buf.size,
					      blob_type, &result->blob.oid))
				ret = FUNC5(opt, FUNC4("Unable to add %s to database"),
					  a->path);

			FUNC6(result_buf.ptr);
			if (ret)
				return ret;
			result->clean = (merge_status == 0);
		} else if (FUNC1(a->mode)) {
			result->clean = FUNC8(opt, &result->blob.oid,
							o->path,
							&o->oid,
							&a->oid,
							&b->oid);
		} else if (FUNC2(a->mode)) {
			switch (opt->recursive_variant) {
			case MERGE_VARIANT_NORMAL:
				FUNC10(&result->blob.oid, &a->oid);
				if (!FUNC9(&a->oid, &b->oid))
					result->clean = 0;
				break;
			case MERGE_VARIANT_OURS:
				FUNC10(&result->blob.oid, &a->oid);
				break;
			case MERGE_VARIANT_THEIRS:
				FUNC10(&result->blob.oid, &b->oid);
				break;
			}
		} else
			FUNC0("unsupported object type in the tree");
	}

	if (result->merge)
		FUNC11(opt, 2, FUNC4("Auto-merging %s"), filename);

	return 0;
}