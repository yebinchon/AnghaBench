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
typedef  int /*<<< orphan*/  git_tree_cache ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_pool ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC2(git_tree_cache **out, const git_tree *tree, git_pool *pool)
{
	int error;
	git_tree_cache *cache;

	if ((error = FUNC0(&cache, "", pool)) < 0)
		return error;

	if ((error = FUNC1(cache, tree, pool)) < 0)
		return error;

	*out = cache;
	return 0;
}