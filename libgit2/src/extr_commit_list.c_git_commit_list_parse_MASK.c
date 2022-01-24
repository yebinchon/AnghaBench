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
struct TYPE_13__ {int /*<<< orphan*/  odb; } ;
typedef  TYPE_2__ git_revwalk ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_14__ {TYPE_1__ cached; } ;
typedef  TYPE_3__ git_odb_object ;
struct TYPE_15__ {int /*<<< orphan*/  oid; scalar_t__ parsed; } ;
typedef  TYPE_4__ git_commit_list_node ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 scalar_t__ GIT_OBJECT_COMMIT ; 
 int FUNC0 (TYPE_2__*,TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(git_revwalk *walk, git_commit_list_node *commit)
{
	git_odb_object *obj;
	int error;

	if (commit->parsed)
		return 0;

	if ((error = FUNC3(&obj, walk->odb, &commit->oid)) < 0)
		return error;

	if (obj->cached.type != GIT_OBJECT_COMMIT) {
		FUNC1(GIT_ERROR_INVALID, "object is no commit object");
		error = -1;
	} else
		error = FUNC0(walk, commit, obj);

	FUNC2(obj);
	return error;
}