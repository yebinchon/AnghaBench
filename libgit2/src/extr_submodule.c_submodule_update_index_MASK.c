#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int /*<<< orphan*/  path; int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_submodule ;
typedef  int /*<<< orphan*/  git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_SUBMODULE_STATUS_IN_INDEX ; 
 int GIT_SUBMODULE_STATUS__INDEX_OID_VALID ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(git_submodule *sm)
{
	git_index *index;
	const git_index_entry *ie;

	if (FUNC1(&index, sm->repo) < 0)
		return -1;

	sm->flags = sm->flags &
		~(GIT_SUBMODULE_STATUS_IN_INDEX |
		  GIT_SUBMODULE_STATUS__INDEX_OID_VALID);

	if (!(ie = FUNC0(index, sm->path, 0)))
		return 0;

	FUNC2(sm, ie);

	return 0;
}