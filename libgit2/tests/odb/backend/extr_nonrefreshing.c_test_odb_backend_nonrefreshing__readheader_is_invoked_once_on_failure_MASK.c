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
typedef  int /*<<< orphan*/  git_odb ;
typedef  int /*<<< orphan*/  git_object_t ;
struct TYPE_2__ {int /*<<< orphan*/  read_header_calls; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 TYPE_1__* _fake ; 
 int /*<<< orphan*/  _nonexisting_oid ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	git_odb *odb;
	size_t len;
	git_object_t type;

	FUNC2(FUNC4(&odb, _repo));

	FUNC1(
		FUNC3(&len, &type, odb, &_nonexisting_oid),
		GIT_ENOTFOUND);

	FUNC0(1, _fake->read_header_calls);
}