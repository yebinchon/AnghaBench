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
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct tree {TYPE_1__ object; } ;
struct traversal_context {TYPE_3__* revs; int /*<<< orphan*/  show_data; int /*<<< orphan*/  (* show_commit ) (struct commit*,int /*<<< orphan*/ ) ;} ;
struct strbuf {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  oid; scalar_t__ parsed; } ;
struct commit {TYPE_2__ object; } ;
struct TYPE_7__ {scalar_t__ tree_blobs_in_commit_order; int /*<<< orphan*/  tree_objects; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOT_USER_GIVEN ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct tree*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tree* FUNC3 (struct commit*) ; 
 struct commit* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct commit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct traversal_context*,struct strbuf*) ; 

__attribute__((used)) static void FUNC10(struct traversal_context *ctx)
{
	struct commit *commit;
	struct strbuf csp; /* callee's scratch pad */
	FUNC6(&csp, PATH_MAX);

	while ((commit = FUNC4(ctx->revs)) != NULL) {
		/*
		 * an uninteresting boundary commit may not have its tree
		 * parsed yet, but we are not going to show them anyway
		 */
		if (!ctx->revs->tree_objects)
			; /* do not bother loading tree */
		else if (FUNC3(commit)) {
			struct tree *tree = FUNC3(commit);
			tree->object.flags |= NOT_USER_GIVEN;
			FUNC1(ctx->revs, tree);
		} else if (commit->object.parsed) {
			FUNC2(FUNC0("unable to load root tree for commit %s"),
			      FUNC5(&commit->object.oid));
		}
		ctx->show_commit(commit, ctx->show_data);

		if (ctx->revs->tree_blobs_in_commit_order)
			/*
			 * NEEDSWORK: Adding the tree and then flushing it here
			 * needs a reallocation for each commit. Can we pass the
			 * tree directory without allocation churn?
			 */
			FUNC9(ctx, &csp);
	}
	FUNC9(ctx, &csp);
	FUNC7(&csp);
}