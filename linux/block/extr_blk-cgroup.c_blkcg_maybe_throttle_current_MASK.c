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
struct request_queue {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;
struct blkcg_gq {int dummy; } ;
struct blkcg {int dummy; } ;
struct TYPE_3__ {int use_memdelay; struct request_queue* throttle_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct blkcg_gq*,int) ; 
 struct blkcg_gq* FUNC2 (struct blkcg*,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct blkcg_gq*) ; 
 int /*<<< orphan*/  FUNC4 (struct blkcg_gq*) ; 
 struct blkcg* FUNC5 (struct cgroup_subsys_state*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  io_cgrp_id ; 
 struct cgroup_subsys_state* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct cgroup_subsys_state* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC10(void)
{
	struct request_queue *q = current->throttle_queue;
	struct cgroup_subsys_state *css;
	struct blkcg *blkcg;
	struct blkcg_gq *blkg;
	bool use_memdelay = current->use_memdelay;

	if (!q)
		return;

	current->throttle_queue = NULL;
	current->use_memdelay = false;

	FUNC7();
	css = FUNC6();
	if (css)
		blkcg = FUNC5(css);
	else
		blkcg = FUNC5(FUNC9(current, io_cgrp_id));

	if (!blkcg)
		goto out;
	blkg = FUNC2(blkcg, q);
	if (!blkg)
		goto out;
	if (!FUNC4(blkg))
		goto out;
	FUNC8();

	FUNC1(blkg, use_memdelay);
	FUNC3(blkg);
	FUNC0(q);
	return;
out:
	FUNC8();
	FUNC0(q);
}