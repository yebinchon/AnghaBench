#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_revwalk ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oidarray ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__* item; } ;
typedef  TYPE_2__ git_commit_list ;
typedef  int /*<<< orphan*/  git_array_oid_t ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__**,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

int FUNC7(git_oidarray *out, git_repository *repo, const git_oid *one, const git_oid *two)
{
	int error;
	git_revwalk *walk;
	git_commit_list *result, *list;
	git_array_oid_t array;

	FUNC1(array);

	if ((error = FUNC6(&result, &walk, repo, one, two)) < 0)
		return error;

	list = result;
	while (list) {
		git_oid *id = FUNC0(array);
		if (id == NULL)
			goto on_error;

		FUNC3(id, &list->item->oid);
		list = list->next;
	}

	FUNC4(out, &array);
	FUNC2(&result);
	FUNC5(walk);

	return 0;

on_error:
	FUNC2(&result);
	FUNC5(walk);
	return -1;
}