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
struct rev_info {scalar_t__ edge_hint; int /*<<< orphan*/  repo; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;
typedef  int /*<<< orphan*/  (* show_edge_fn ) (struct commit*) ;

/* Variables and functions */
 int SHOWN ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct commit*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct commit *commit,
					    struct rev_info *revs,
					    show_edge_fn show_edge)
{
	struct commit_list *parents;

	for (parents = commit->parents; parents; parents = parents->next) {
		struct commit *parent = parents->item;
		if (!(parent->object.flags & UNINTERESTING))
			continue;
		FUNC1(revs->repo, FUNC0(parent));
		if (revs->edge_hint && !(parent->object.flags & SHOWN)) {
			parent->object.flags |= SHOWN;
			show_edge(parent);
		}
	}
}