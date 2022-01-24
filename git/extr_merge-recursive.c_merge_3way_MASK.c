#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct merge_options {int recursive_variant; char const* ancestor; TYPE_2__* repo; TYPE_1__* priv; int /*<<< orphan*/  xdl_opts; int /*<<< orphan*/  renormalize; } ;
struct ll_merge_options {int extra_marker_size; int virtual_ancestor; scalar_t__ variant; int /*<<< orphan*/  xdl_opts; int /*<<< orphan*/  renormalize; int /*<<< orphan*/  member_0; } ;
struct diff_filespec {scalar_t__ path; int /*<<< orphan*/  oid; } ;
struct TYPE_10__ {char* ptr; } ;
typedef  TYPE_3__ mmfile_t ;
typedef  int /*<<< orphan*/  mmbuffer_t ;
struct TYPE_9__ {int /*<<< orphan*/  index; } ;
struct TYPE_8__ {scalar_t__ call_depth; } ;

/* Variables and functions */
#define  MERGE_VARIANT_OURS 129 
#define  MERGE_VARIANT_THEIRS 128 
 scalar_t__ XDL_MERGE_FAVOR_OURS ; 
 scalar_t__ XDL_MERGE_FAVOR_THEIRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,TYPE_3__*,char*,TYPE_3__*,char*,TYPE_3__*,char*,int /*<<< orphan*/ ,struct ll_merge_options*) ; 
 char* FUNC3 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct merge_options *opt,
		      mmbuffer_t *result_buf,
		      const struct diff_filespec *o,
		      const struct diff_filespec *a,
		      const struct diff_filespec *b,
		      const char *branch1,
		      const char *branch2,
		      const int extra_marker_size)
{
	mmfile_t orig, src1, src2;
	struct ll_merge_options ll_opts = {0};
	char *base, *name1, *name2;
	int merge_status;

	ll_opts.renormalize = opt->renormalize;
	ll_opts.extra_marker_size = extra_marker_size;
	ll_opts.xdl_opts = opt->xdl_opts;

	if (opt->priv->call_depth) {
		ll_opts.virtual_ancestor = 1;
		ll_opts.variant = 0;
	} else {
		switch (opt->recursive_variant) {
		case MERGE_VARIANT_OURS:
			ll_opts.variant = XDL_MERGE_FAVOR_OURS;
			break;
		case MERGE_VARIANT_THEIRS:
			ll_opts.variant = XDL_MERGE_FAVOR_THEIRS;
			break;
		default:
			ll_opts.variant = 0;
			break;
		}
	}

	FUNC0(a->path && b->path && o->path && opt->ancestor);
	if (FUNC5(a->path, b->path) || FUNC5(a->path, o->path) != 0) {
		base  = FUNC3("%s:%s", opt->ancestor, o->path);
		name1 = FUNC3("%s:%s", branch1, a->path);
		name2 = FUNC3("%s:%s", branch2, b->path);
	} else {
		base  = FUNC3("%s", opt->ancestor);
		name1 = FUNC3("%s", branch1);
		name2 = FUNC3("%s", branch2);
	}

	FUNC4(&orig, &o->oid);
	FUNC4(&src1, &a->oid);
	FUNC4(&src2, &b->oid);

	merge_status = FUNC2(result_buf, a->path, &orig, base,
				&src1, name1, &src2, name2,
				opt->repo->index, &ll_opts);

	FUNC1(base);
	FUNC1(name1);
	FUNC1(name2);
	FUNC1(orig.ptr);
	FUNC1(src1.ptr);
	FUNC1(src2.ptr);
	return merge_status;
}