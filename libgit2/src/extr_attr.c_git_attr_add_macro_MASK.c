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
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_pool ;
struct TYPE_10__ {int /*<<< orphan*/  flags; TYPE_2__* pattern; int /*<<< orphan*/  length; } ;
struct TYPE_11__ {int /*<<< orphan*/  assigns; TYPE_1__ match; } ;
typedef  TYPE_2__ git_attr_rule ;
struct TYPE_12__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ATTR_FNMATCH_MACRO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

int FUNC9(
	git_repository *repo,
	const char *name,
	const char *values)
{
	int error;
	git_attr_rule *macro = NULL;
	git_pool *pool;

	if ((error = FUNC3(repo)) < 0)
		return error;

	macro = FUNC1(1, sizeof(git_attr_rule));
	FUNC0(macro);

	pool = &FUNC7(repo)->pool;

	macro->match.pattern = FUNC6(pool, name);
	FUNC0(macro->match.pattern);

	macro->match.length = FUNC8(macro->match.pattern);
	macro->match.flags = GIT_ATTR_FNMATCH_MACRO;

	error = FUNC2(repo, pool, &macro->assigns, &values);

	if (!error)
		error = FUNC4(repo, macro);

	if (error < 0)
		FUNC5(macro);

	return error;
}