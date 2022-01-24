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
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_6__ {TYPE_1__* item; } ;
typedef  TYPE_2__ git_commit_list ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__**,int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*) ; 

int FUNC5(git_oid *out, git_repository *repo, size_t length, const git_oid input_array[])
{
	git_revwalk *walk;
	git_commit_list *result = NULL;
	int error = 0;

	FUNC0(out && repo && input_array);

	if ((error = FUNC4(&result, &walk, repo, length, input_array)) < 0)
		return error;

	FUNC2(out, &result->item->oid);

	FUNC1(&result);
	FUNC3(walk);

	return 0;
}