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
struct repository {int /*<<< orphan*/ * index; int /*<<< orphan*/ * submodule_cache; int /*<<< orphan*/ * config; int /*<<< orphan*/ * parsed_objects; int /*<<< orphan*/ * objects; int /*<<< orphan*/ * submodule_prefix; int /*<<< orphan*/ * worktree; int /*<<< orphan*/ * index_file; int /*<<< orphan*/ * graft_file; int /*<<< orphan*/ * commondir; int /*<<< orphan*/ * gitdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_index ; 

void FUNC6(struct repository *repo)
{
	FUNC0(repo->gitdir);
	FUNC0(repo->commondir);
	FUNC0(repo->graft_file);
	FUNC0(repo->index_file);
	FUNC0(repo->worktree);
	FUNC0(repo->submodule_prefix);

	FUNC4(repo->objects);
	FUNC0(repo->objects);

	FUNC3(repo->parsed_objects);
	FUNC0(repo->parsed_objects);

	if (repo->config) {
		FUNC2(repo->config);
		FUNC0(repo->config);
	}

	if (repo->submodule_cache) {
		FUNC5(repo->submodule_cache);
		repo->submodule_cache = NULL;
	}

	if (repo->index) {
		FUNC1(repo->index);
		if (repo->index != &the_index)
			FUNC0(repo->index);
	}
}