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
struct TYPE_8__ {int /*<<< orphan*/  attr; } ;
typedef  TYPE_1__ git_tree_entry ;
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  path; int /*<<< orphan*/  repo; } ;
typedef  TYPE_2__ git_submodule ;

/* Variables and functions */
 int GIT_SUBMODULE_STATUS_IN_HEAD ; 
 int GIT_SUBMODULE_STATUS__HEAD_OID_VALID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(git_submodule *submodule)
{
	git_tree *head = NULL;
	git_tree_entry *te = NULL;

	submodule->flags = submodule->flags &
		~(GIT_SUBMODULE_STATUS_IN_HEAD |
		  GIT_SUBMODULE_STATUS__HEAD_OID_VALID);

	/* if we can't look up file in current head, then done */
	if (FUNC1(&head, submodule->repo) < 0 ||
		FUNC2(&te, head, submodule->path) < 0)
		FUNC0();
	else
		FUNC6(submodule, te->attr, FUNC4(te));

	FUNC3(te);
	FUNC5(head);
	return 0;
}