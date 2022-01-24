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
typedef  int /*<<< orphan*/  git_tag ;
struct TYPE_3__ {int /*<<< orphan*/  pb; int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_push ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 scalar_t__ GIT_OBJECT_TAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(git_object **out, git_push *push, git_oid *id)
{
	git_object *obj = NULL, *target = NULL;
	int error;

	if ((error = FUNC2(&obj, push->repo, id, GIT_OBJECT_TAG)) < 0)
		return error;

	while (FUNC3(obj) == GIT_OBJECT_TAG) {
		if ((error = FUNC4(push->pb, FUNC1(obj), NULL)) < 0)
			break;

		if ((error = FUNC5(&target, (git_tag *) obj)) < 0)
			break;

		FUNC0(obj);
		obj = target;
	}

	if (error < 0)
		FUNC0(obj);
	else
		*out = obj;

	return error;
}