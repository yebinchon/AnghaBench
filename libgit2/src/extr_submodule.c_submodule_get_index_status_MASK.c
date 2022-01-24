#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 unsigned int GIT_SUBMODULE_STATUS_INDEX_ADDED ; 
 unsigned int GIT_SUBMODULE_STATUS_INDEX_DELETED ; 
 unsigned int GIT_SUBMODULE_STATUS_INDEX_MODIFIED ; 
 unsigned int GIT_SUBMODULE_STATUS__INDEX_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(unsigned int *status, git_submodule *sm)
{
	const git_oid *head_oid  = FUNC1(sm);
	const git_oid *index_oid = FUNC2(sm);

	*status = *status & ~GIT_SUBMODULE_STATUS__INDEX_FLAGS;

	if (!head_oid) {
		if (index_oid)
			*status |= GIT_SUBMODULE_STATUS_INDEX_ADDED;
	}
	else if (!index_oid)
		*status |= GIT_SUBMODULE_STATUS_INDEX_DELETED;
	else if (!FUNC0(head_oid, index_oid))
		*status |= GIT_SUBMODULE_STATUS_INDEX_MODIFIED;
}