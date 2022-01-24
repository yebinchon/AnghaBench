#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_12__ {int /*<<< orphan*/  pattern; } ;
struct TYPE_13__ {scalar_t__ length; } ;
struct TYPE_14__ {TYPE_1__ match; TYPE_2__ assigns; } ;
typedef  TYPE_3__ git_attr_rule ;
struct TYPE_15__ {int /*<<< orphan*/  macros; } ;
typedef  TYPE_4__ git_attr_cache ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 

int FUNC6(git_repository *repo, git_attr_rule *macro)
{
	git_attr_cache *cache = FUNC3(repo);
	git_attr_rule *preexisting;
	bool locked = false;
	int error = 0;

	/*
	 * Callers assume that if we return success, that the
	 * macro will have been adopted by the attributes cache.
	 * Thus, we have to free the macro here if it's not being
	 * added to the cache.
	 *
	 * TODO: generate warning log if (macro->assigns.length == 0)
	 */
	if (macro->assigns.length == 0) {
		FUNC2(macro);
		goto out;
	}

	if ((error = FUNC0(cache)) < 0)
		goto out;
	locked = true;

	if ((preexisting = FUNC4(cache->macros, macro->match.pattern)) != NULL)
	    FUNC2(preexisting);

	if ((error = FUNC5(cache->macros, macro->match.pattern, macro)) < 0)
	    goto out;

out:
	if (locked)
		FUNC1(cache);
	return error;
}