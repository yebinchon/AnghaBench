#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tree_desc {int dummy; } ;
struct tree {int dummy; } ;
struct merge_options {TYPE_2__* priv; TYPE_1__* repo; } ;
struct index_state {int /*<<< orphan*/  cache_tree; int /*<<< orphan*/ * member_0; } ;
struct TYPE_8__ {int index_only; int update; int merge; int head_idx; int aggressive; struct index_state* src_index; struct index_state* dst_index; int /*<<< orphan*/  fn; } ;
struct TYPE_7__ {struct index_state orig_index; TYPE_3__ unpack_opts; scalar_t__ call_depth; } ;
struct TYPE_6__ {struct index_state* index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tree_desc*,struct tree*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct merge_options*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  threeway_merge ; 
 int FUNC5 (int,struct tree_desc*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(struct merge_options *opt,
			      struct tree *common,
			      struct tree *head,
			      struct tree *merge)
{
	int rc;
	struct tree_desc t[3];
	struct index_state tmp_index = { NULL };

	FUNC2(&opt->priv->unpack_opts, 0, sizeof(opt->priv->unpack_opts));
	if (opt->priv->call_depth)
		opt->priv->unpack_opts.index_only = 1;
	else
		opt->priv->unpack_opts.update = 1;
	opt->priv->unpack_opts.merge = 1;
	opt->priv->unpack_opts.head_idx = 2;
	opt->priv->unpack_opts.fn = threeway_merge;
	opt->priv->unpack_opts.src_index = opt->repo->index;
	opt->priv->unpack_opts.dst_index = &tmp_index;
	opt->priv->unpack_opts.aggressive = !FUNC3(opt);
	FUNC4(&opt->priv->unpack_opts, "merge");

	FUNC1(t+0, common);
	FUNC1(t+1, head);
	FUNC1(t+2, merge);

	rc = FUNC5(3, t, &opt->priv->unpack_opts);
	FUNC0(&opt->repo->index->cache_tree);

	/*
	 * Update opt->repo->index to match the new results, AFTER saving a
	 * copy in opt->priv->orig_index.  Update src_index to point to the
	 * saved copy.  (verify_uptodate() checks src_index, and the original
	 * index is the one that had the necessary modification timestamps.)
	 */
	opt->priv->orig_index = *opt->repo->index;
	*opt->repo->index = tmp_index;
	opt->priv->unpack_opts.src_index = &opt->priv->orig_index;

	return rc;
}