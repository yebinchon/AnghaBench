#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree_entry ;
struct TYPE_6__ {size_t children_count; scalar_t__ entry_count; struct TYPE_6__** children; int /*<<< orphan*/  oid; } ;
typedef  TYPE_1__ git_tree_cache ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_pool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 scalar_t__ GIT_FILEMODE_TREE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__** FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 size_t FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 int FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC14(git_tree_cache *cache, const git_tree *tree, git_pool *pool)
{
	git_repository *repo;
	size_t i, j, nentries, ntrees, alloc_size;
	int error;

	repo = FUNC13(tree);

	FUNC2(&cache->oid, FUNC11(tree));
	nentries = FUNC9(tree);

	/*
	 * We make sure we know how many trees we need to allocate for
	 * so we don't have to realloc and change the pointers for the
	 * parents.
	 */
	ntrees = 0;
	for (i = 0; i < nentries; i++) {
		const git_tree_entry *entry;

		entry = FUNC5(tree, i);
		if (FUNC6(entry) == GIT_FILEMODE_TREE)
			ntrees++;
	}

	FUNC1(&alloc_size, ntrees, sizeof(git_tree_cache *));

	cache->children_count = ntrees;
	cache->children = FUNC3(pool, alloc_size);
	FUNC0(cache->children);

	j = 0;
	for (i = 0; i < nentries; i++) {
		const git_tree_entry *entry;
		git_tree *subtree;

		entry = FUNC5(tree, i);
		if (FUNC6(entry) != GIT_FILEMODE_TREE) {
			cache->entry_count++;
			continue;
		}

		if ((error = FUNC4(&cache->children[j], FUNC8(entry), pool)) < 0)
			return error;

		if ((error = FUNC12(&subtree, repo, FUNC7(entry))) < 0)
			return error;

		error = FUNC14(cache->children[j], subtree, pool);
		FUNC10(subtree);
		cache->entry_count += cache->children[j]->entry_count;
		j++;

		if (error < 0)
			return error;
	}

	return 0;
}