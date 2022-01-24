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
struct topo_walk_info {int /*<<< orphan*/  indegree; int /*<<< orphan*/  topo_queue; } ;
struct rev_info {struct topo_walk_info* topo_walk_info; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__* FUNC0 (int /*<<< orphan*/ *,struct commit*) ; 
 struct commit* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct commit *FUNC2(struct rev_info *revs)
{
	struct commit *c;
	struct topo_walk_info *info = revs->topo_walk_info;

	/* pop next off of topo_queue */
	c = FUNC1(&info->topo_queue);

	if (c)
		*(FUNC0(&info->indegree, c)) = 0;

	return c;
}