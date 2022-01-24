#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_2__ {int /*<<< orphan*/  read_calls; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  _existing_oid ; 
 TYPE_1__* _fake ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	git_object *obj;

	FUNC1(FUNC3(&obj, _repo, &_existing_oid, GIT_OBJECT_ANY));

	FUNC0(1, _fake->read_calls);

	FUNC2(obj);
}