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
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  path; int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_submodule ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  DOT_GIT ; 
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_SUBMODULE_STATUS_IN_WD ; 
 int /*<<< orphan*/  GIT_SUBMODULE_STATUS__WD_SCANNED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(git_submodule *sm)
{
	git_buf path = GIT_BUF_INIT;

	if (FUNC1(&path, FUNC4(sm->repo), sm->path) < 0)
		return -1;

	if (FUNC3(path.ptr))
		sm->flags |= GIT_SUBMODULE_STATUS__WD_SCANNED;

	if (FUNC2(&path, DOT_GIT))
		sm->flags |= GIT_SUBMODULE_STATUS_IN_WD;

	FUNC0(&path);
	return 0;
}