#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_11__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ git_iterator ;
typedef  int /*<<< orphan*/  git_diff_options ;
struct TYPE_13__ {int /*<<< orphan*/  deltas; int /*<<< orphan*/  pool; int /*<<< orphan*/  opts; int /*<<< orphan*/  attrsession; int /*<<< orphan*/  free_fn; int /*<<< orphan*/  patch_fn; int /*<<< orphan*/  new_src; int /*<<< orphan*/  old_src; int /*<<< orphan*/ * repo; int /*<<< orphan*/  type; } ;
struct TYPE_12__ {TYPE_4__ base; } ;
typedef  TYPE_2__ git_diff_generated ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_TYPE_GENERATED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diff_generated_free ; 
 TYPE_2__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  git_diff_delta__cmp ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  git_patch_generated_from_diff ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static git_diff_generated *FUNC10(
	git_repository *repo,
	git_iterator *old_iter,
	git_iterator *new_iter)
{
	git_diff_generated *diff;
	git_diff_options dflt = GIT_DIFF_OPTIONS_INIT;

	FUNC1(repo && old_iter && new_iter);

	if ((diff = FUNC2(1, sizeof(git_diff_generated))) == NULL)
		return NULL;

	FUNC0(&diff->base);
	diff->base.type = GIT_DIFF_TYPE_GENERATED;
	diff->base.repo = repo;
	diff->base.old_src = old_iter->type;
	diff->base.new_src = new_iter->type;
	diff->base.patch_fn = git_patch_generated_from_diff;
	diff->base.free_fn = diff_generated_free;
	FUNC3(&diff->base.attrsession, repo);
	FUNC9(&diff->base.opts, &dflt, sizeof(git_diff_options));

	FUNC7(&diff->base.pool, 1);

	if (FUNC8(&diff->base.deltas, 0, git_diff_delta__cmp) < 0) {
		FUNC5(&diff->base);
		return NULL;
	}

	/* Use case-insensitive compare if either iterator has
	 * the ignore_case bit set */
	FUNC4(
		&diff->base,
		FUNC6(old_iter) ||
		FUNC6(new_iter));

	return diff;
}