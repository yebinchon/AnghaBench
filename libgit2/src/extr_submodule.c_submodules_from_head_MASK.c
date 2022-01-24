#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_submodule ;
typedef  int /*<<< orphan*/  git_strmap ;
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_8__ {char* path; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  GIT_SUBMODULE_STATUS__HEAD_NOT_SUBMODULE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__ const**,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(git_strmap *map, git_tree *head, git_config *cfg)
{
	int error;
	git_iterator *i = NULL;
	const git_index_entry *entry;
	git_strmap *names;

	if ((error = FUNC8(&names, FUNC7(head), cfg)))
		goto done;

	if ((error = FUNC3(&i, head, NULL)) < 0)
		goto done;

	while (!(error = FUNC2(&entry, i))) {
		git_submodule *sm;

		if ((sm = FUNC5(map, entry->path)) != NULL) {
			if (FUNC0(entry->mode))
				FUNC10(sm, entry->mode, &entry->id);
			else
				sm->flags |= GIT_SUBMODULE_STATUS__HEAD_NOT_SUBMODULE;
		} else if (FUNC0(entry->mode)) {
			const char *name;

			if ((name = FUNC5(names, entry->path)) == NULL)
				name = entry->path;

			if (!FUNC9(&sm, FUNC7(head), map, name)) {
				FUNC10(
					sm, entry->mode, &entry->id);
				FUNC6(sm);
			}
		}
	}

	if (error == GIT_ITEROVER)
		error = 0;

done:
	FUNC4(i);
	FUNC1(names);

	return error;
}