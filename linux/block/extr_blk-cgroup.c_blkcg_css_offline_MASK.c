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
struct cgroup_subsys_state {int dummy; } ;
struct blkcg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blkcg*) ; 
 struct blkcg* FUNC1 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct blkcg*) ; 

__attribute__((used)) static void FUNC3(struct cgroup_subsys_state *css)
{
	struct blkcg *blkcg = FUNC1(css);

	/* this prevents anyone from attaching or migrating to this blkcg */
	FUNC2(blkcg);

	/* put the base cgwb reference allowing step 2 to be triggered */
	FUNC0(blkcg);
}