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
struct rev_info {int reverse_output_stage; int linear; int /*<<< orphan*/ * previous_parents; scalar_t__ graph; scalar_t__ track_linear; struct commit_list* commits; scalar_t__ reverse; } ;
struct commit_list {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int TRACK_LINEAR ; 
 int /*<<< orphan*/  FUNC0 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*) ; 
 struct commit* FUNC3 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct commit*) ; 
 struct commit* FUNC5 (struct commit_list**) ; 

struct commit *FUNC6(struct rev_info *revs)
{
	struct commit *c;
	struct commit_list *reversed;

	if (revs->reverse) {
		reversed = NULL;
		while ((c = FUNC3(revs)))
			FUNC0(c, &reversed);
		revs->commits = reversed;
		revs->reverse = 0;
		revs->reverse_output_stage = 1;
	}

	if (revs->reverse_output_stage) {
		c = FUNC5(&revs->commits);
		if (revs->track_linear)
			revs->linear = !!(c && c->object.flags & TRACK_LINEAR);
		return c;
	}

	c = FUNC3(revs);
	if (c && revs->graph)
		FUNC4(revs->graph, c);
	if (!c) {
		FUNC2(revs);
		if (revs->previous_parents) {
			FUNC1(revs->previous_parents);
			revs->previous_parents = NULL;
		}
	}
	return c;
}