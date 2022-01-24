#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  commit_pool; } ;
typedef  TYPE_1__ git_revwalk ;
typedef  int /*<<< orphan*/  git_commit_list_node ;

/* Variables and functions */
 size_t PARENTS_PER_COMMIT ; 
 scalar_t__ FUNC0 (size_t*,size_t,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static git_commit_list_node **FUNC2(
	git_revwalk *walk, git_commit_list_node *commit, size_t n_parents)
{
	size_t bytes;

	if (n_parents <= PARENTS_PER_COMMIT)
		return (git_commit_list_node **)((char *)commit + sizeof(git_commit_list_node));

	if (FUNC0(&bytes, n_parents, sizeof(git_commit_list_node *)))
		return NULL;

	return (git_commit_list_node **)FUNC1(&walk->commit_pool, bytes);
}