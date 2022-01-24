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
struct TYPE_6__ {size_t namelen; char* name; } ;
typedef  TYPE_1__ git_tree_cache ;
typedef  int /*<<< orphan*/  git_pool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,int,size_t,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 size_t FUNC5 (char const*) ; 

int FUNC6(git_tree_cache **out, const char *name, git_pool *pool)
{
	size_t name_len, alloc_size;
	git_tree_cache *tree;

	name_len = FUNC5(name);

	FUNC1(&alloc_size, sizeof(git_tree_cache), name_len, 1);

	tree = FUNC2(pool, alloc_size);
	FUNC0(tree);

	FUNC4(tree, 0x0, sizeof(git_tree_cache));
	/* NUL-terminated tree name */
	tree->namelen = name_len;
	FUNC3(tree->name, name, name_len);
	tree->name[name_len] = '\0';

	*out = tree;
	return 0;
}