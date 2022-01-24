#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_9__ {int /*<<< orphan*/  strings; int /*<<< orphan*/  count; } ;
struct TYPE_11__ {TYPE_1__ pathlist; } ;
typedef  TYPE_3__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_10__ {int /*<<< orphan*/  strings; int /*<<< orphan*/  count; } ;
struct TYPE_12__ {int checkout_strategy; TYPE_2__ paths; } ;
typedef  TYPE_4__ git_checkout_options ;

/* Variables and functions */
 int GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH ; 
 int /*<<< orphan*/  GIT_ERROR_CHECKOUT ; 
 int GIT_EUNBORNBRANCH ; 
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(
	git_repository *repo,
	const git_object *treeish,
	const git_checkout_options *opts)
{
	int error;
	git_index *index;
	git_tree *tree = NULL;
	git_iterator *tree_i = NULL;
	git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;

	if (!treeish && !repo) {
		FUNC2(GIT_ERROR_CHECKOUT,
			"must provide either repository or tree to checkout");
		return -1;
	}
	if (treeish && repo && FUNC6(treeish) != repo) {
		FUNC2(GIT_ERROR_CHECKOUT,
			"object to checkout does not match repository");
		return -1;
	}

	if (!repo)
		repo = FUNC6(treeish);

	if (treeish) {
		if (FUNC7((git_object **)&tree, treeish, GIT_OBJECT_TREE) < 0) {
			FUNC2(
				GIT_ERROR_CHECKOUT, "provided object cannot be peeled to a tree");
			return -1;
		}
	}
	else {
		if ((error = FUNC0(&tree, repo)) < 0) {
			if (error != GIT_EUNBORNBRANCH)
				FUNC2(
					GIT_ERROR_CHECKOUT,
					"HEAD could not be peeled to a tree and no treeish given");
			return error;
		}
	}

	if ((error = FUNC8(&index, repo)) < 0)
		return error;

	if (opts && (opts->checkout_strategy & GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH)) {
		iter_opts.pathlist.count = opts->paths.count;
		iter_opts.pathlist.strings = opts->paths.strings;
	}

	if (!(error = FUNC4(&tree_i, tree, &iter_opts)))
		error = FUNC1(tree_i, index, opts);

	FUNC5(tree_i);
	FUNC3(index);
	FUNC9(tree);

	return error;
}