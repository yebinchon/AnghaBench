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
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 TYPE_1__* _fake ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 

void FUNC3(void)
{
	git_object *obj;

	FUNC1(
		FUNC2(&obj, _repo, "deadbeefdeadbeefdeadbeefdeadbeefdeadbeef"),
		GIT_ENOTFOUND);

	FUNC0(1, _fake->read_calls);
}