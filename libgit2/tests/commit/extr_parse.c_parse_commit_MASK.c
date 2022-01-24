#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  size; } ;
struct TYPE_10__ {int /*<<< orphan*/  repo; } ;
struct TYPE_11__ {char* buffer; TYPE_1__ cached; TYPE_2__ object; } ;
typedef  TYPE_3__ git_odb_object ;
typedef  TYPE_3__ git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  g_repo ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(git_commit **out, const char *buffer)
{
	git_commit *commit;
	git_odb_object fake_odb_object;
	int error;

	commit = (git_commit*)FUNC0(sizeof(git_commit));
	FUNC2(commit, 0x0, sizeof(git_commit));
	commit->object.repo = g_repo;

	FUNC2(&fake_odb_object, 0x0, sizeof(git_odb_object));
	fake_odb_object.buffer = (char *)buffer;
	fake_odb_object.cached.size = FUNC3(fake_odb_object.buffer);

	error = FUNC1(commit, &fake_odb_object);

	*out = commit;
	return error;
}