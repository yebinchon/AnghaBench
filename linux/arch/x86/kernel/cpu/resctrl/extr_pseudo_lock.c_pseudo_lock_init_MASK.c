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
struct rdtgroup {struct pseudo_lock_region* plr; } ;
struct pseudo_lock_region {int /*<<< orphan*/  pm_reqs; int /*<<< orphan*/  lock_thread_wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pseudo_lock_region* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rdtgroup *rdtgrp)
{
	struct pseudo_lock_region *plr;

	plr = FUNC2(sizeof(*plr), GFP_KERNEL);
	if (!plr)
		return -ENOMEM;

	FUNC1(&plr->lock_thread_wq);
	FUNC0(&plr->pm_reqs);
	rdtgrp->plr = plr;
	return 0;
}