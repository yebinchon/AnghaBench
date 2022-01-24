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
typedef  int /*<<< orphan*/  git_pool ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ *) ; 

int FUNC2(git_tree_cache **tree, const char *buffer, size_t buffer_size, git_pool *pool)
{
	const char *buffer_end = buffer + buffer_size;

	if (FUNC1(tree, &buffer, buffer_end, pool) < 0)
		return -1;

	if (buffer < buffer_end) {
		FUNC0(GIT_ERROR_INDEX, "corrupted TREE extension in index (unexpected trailing data)");
		return -1;
	}

	return 0;
}