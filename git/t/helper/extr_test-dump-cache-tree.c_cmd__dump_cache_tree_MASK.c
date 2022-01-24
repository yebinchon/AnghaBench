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
struct index_state {struct cache_tree* cache_tree; } ;
struct cache_tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WRITE_TREE_DRY_RUN ; 
 int /*<<< orphan*/  active_cache_tree ; 
 struct cache_tree* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct cache_tree*,char*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct index_state the_index ; 

int FUNC6(int ac, const char **av)
{
	struct index_state istate;
	struct cache_tree *another = FUNC0();
	FUNC5();
	if (FUNC4() < 0)
		FUNC2("unable to read index file");
	istate = the_index;
	istate.cache_tree = another;
	FUNC1(&istate, WRITE_TREE_DRY_RUN);
	return FUNC3(active_cache_tree, another, "");
}