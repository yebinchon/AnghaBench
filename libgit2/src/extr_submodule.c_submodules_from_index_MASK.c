#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_submodule ;
typedef  int /*<<< orphan*/  git_strmap ;
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_9__ {char* path; int /*<<< orphan*/  mode; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  GIT_SUBMODULE_STATUS__INDEX_NOT_SUBMODULE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__ const**,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_2__ const*) ; 

__attribute__((used)) static int FUNC11(git_strmap *map, git_index *idx, git_config *cfg)
{
	int error;
	git_iterator *i = NULL;
	const git_index_entry *entry;
	git_strmap *names;

	if ((error = FUNC8(&names, FUNC2(idx), cfg)))
		goto done;

	if ((error = FUNC4(&i, FUNC2(idx), idx, NULL)) < 0)
		goto done;

	while (!(error = FUNC3(&entry, i))) {
		git_submodule *sm;

		if ((sm = FUNC6(map, entry->path)) != NULL) {
			if (FUNC0(entry->mode))
				FUNC10(sm, entry);
			else
				sm->flags |= GIT_SUBMODULE_STATUS__INDEX_NOT_SUBMODULE;
		} else if (FUNC0(entry->mode)) {
			const char *name;

			if ((name = FUNC6(names, entry->path)) == NULL)
				name = entry->path;

			if (!FUNC9(&sm, FUNC2(idx), map, name)) {
				FUNC10(sm, entry);
				FUNC7(sm);
			}
		}
	}

	if (error == GIT_ITEROVER)
		error = 0;

done:
	FUNC5(i);
	FUNC1(names);

	return error;
}