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
struct TYPE_9__ {TYPE_1__* db; } ;
typedef  TYPE_2__ git_reference ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_8__ {int /*<<< orphan*/  repo; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__**,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(git_object **object, git_reference *reference)
{
	git_reference *resolved = NULL;
	int error;

	if (FUNC2(&resolved, reference) < 0)
		return -1;

	error = FUNC0(object, reference->db->repo, FUNC3(resolved), GIT_OBJECT_ANY);
	FUNC1(resolved);

	return error;
}