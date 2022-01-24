#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct object {int flags; int /*<<< orphan*/  oid; } ;
struct tree {struct object object; } ;
struct traversal_context {int /*<<< orphan*/  show_data; int /*<<< orphan*/  (* show_object ) (struct object*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  filter; struct rev_info* revs; } ;
struct strbuf {int len; int /*<<< orphan*/ * buf; } ;
struct rev_info {int /*<<< orphan*/  repo; int /*<<< orphan*/  do_not_die_on_missing_tree; scalar_t__ exclude_promisor_objects; scalar_t__ ignore_missing_links; int /*<<< orphan*/  tree_objects; } ;
typedef  enum list_objects_filter_result { ____Placeholder_list_objects_filter_result } list_objects_filter_result ;

/* Variables and functions */
 int LOFR_DO_SHOW ; 
 int LOFR_MARK_SEEN ; 
 int LOFR_SKIP_TREE ; 
 int /*<<< orphan*/  LOFS_BEGIN_TREE ; 
 int /*<<< orphan*/  LOFS_END_TREE ; 
 int SEEN ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct tree*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct tree*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct traversal_context*,struct tree*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct object*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct object*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct traversal_context *ctx,
			 struct tree *tree,
			 struct strbuf *base,
			 const char *name)
{
	struct object *obj = &tree->object;
	struct rev_info *revs = ctx->revs;
	int baselen = base->len;
	enum list_objects_filter_result r;
	int failed_parse;

	if (!revs->tree_objects)
		return;
	if (!obj)
		FUNC0("bad tree object");
	if (obj->flags & (UNINTERESTING | SEEN))
		return;

	failed_parse = FUNC5(tree, 1);
	if (failed_parse) {
		if (revs->ignore_missing_links)
			return;

		/*
		 * Pre-filter known-missing tree objects when explicitly
		 * requested.  This may cause the actual filter to report
		 * an incomplete list of missing objects.
		 */
		if (revs->exclude_promisor_objects &&
		    FUNC2(&obj->oid))
			return;

		if (!revs->do_not_die_on_missing_tree)
			FUNC0("bad tree object %s", FUNC4(&obj->oid));
	}

	FUNC8(base, name);
	r = FUNC3(ctx->revs->repo,
					       LOFS_BEGIN_TREE, obj,
					       base->buf, &base->buf[baselen],
					       ctx->filter);
	if (r & LOFR_MARK_SEEN)
		obj->flags |= SEEN;
	if (r & LOFR_DO_SHOW)
		ctx->show_object(obj, base->buf, ctx->show_data);
	if (base->len)
		FUNC7(base, '/');

	if (r & LOFR_SKIP_TREE)
		FUNC12("Skipping contents of tree %s...\n", base->buf);
	else if (!failed_parse)
		FUNC6(ctx, tree, base);

	r = FUNC3(ctx->revs->repo,
					       LOFS_END_TREE, obj,
					       base->buf, &base->buf[baselen],
					       ctx->filter);
	if (r & LOFR_MARK_SEEN)
		obj->flags |= SEEN;
	if (r & LOFR_DO_SHOW)
		ctx->show_object(obj, base->buf, ctx->show_data);

	FUNC9(base, baselen);
	FUNC1(tree);
}