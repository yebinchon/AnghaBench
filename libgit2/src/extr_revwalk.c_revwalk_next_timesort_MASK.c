#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  iterator_time; } ;
typedef  TYPE_1__ git_revwalk ;
struct TYPE_7__ {int /*<<< orphan*/  uninteresting; } ;
typedef  TYPE_2__ git_commit_list_node ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(git_commit_list_node **object_out, git_revwalk *walk)
{
	git_commit_list_node *next;

	while ((next = FUNC1(&walk->iterator_time)) != NULL) {
		/* Some commits might become uninteresting after being added to the list */
		if (!next->uninteresting) {
			*object_out = next;
			return 0;
		}
	}

	FUNC0();
	return GIT_ITEROVER;
}