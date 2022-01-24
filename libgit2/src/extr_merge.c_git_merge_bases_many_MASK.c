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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_2__**,int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*) ; 

int FUNC8(git_oidarray *out, git_repository *repo, size_t length, const git_oid input_array[])
{
	git_revwalk *walk;
	git_commit_list *list, *result = NULL;
	int error = 0;
	git_array_oid_t array;

	FUNC0(out && repo && input_array);

	if ((error = FUNC7(&result, &walk, repo, length, input_array)) < 0)
		return error;

	FUNC2(array);

	list = result;
	while (list) {
		git_oid *id = FUNC1(array);
		if (id == NULL) {
			error = -1;
			goto cleanup;
		}

		FUNC4(id, &list->item->oid);
		list = list->next;
	}

	FUNC5(out, &array);

cleanup:
	FUNC3(&result);
	FUNC6(walk);

	return error;
}