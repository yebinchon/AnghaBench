#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_pqueue ;
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ git_commit_list_node ;

/* Variables and functions */
 int STALE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(git_pqueue *list)
{
	size_t i;

	for (i = 0; i < FUNC1(list); i++) {
		git_commit_list_node *commit = FUNC0(list, i);
		if ((commit->flags & STALE) == 0)
			return 1;
	}

	return 0;
}