#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_submodule ;
typedef  int /*<<< orphan*/  git_strmap ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__**,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC5(git_submodule **out, git_repository *repo, git_strmap *map, const char *name)
{
	git_submodule *sm = NULL;
	int error;

	if ((sm = FUNC1(map, name)) != NULL)
		goto done;

	/* if the submodule doesn't exist yet in the map, create it */
	if ((error = FUNC4(&sm, repo, name)) < 0)
		return error;

	if ((error = FUNC2(map, sm->name, sm)) < 0) {
		FUNC3(sm);
		return error;
	}

done:
	FUNC0(sm);
	*out = sm;
	return 0;
}