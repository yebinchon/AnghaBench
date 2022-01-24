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
struct rdtgroup {int dummy; } ;

/* Variables and functions */
 scalar_t__ rdt_mon_capable ; 
 int FUNC0 (struct rdtgroup*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rdtgroup*,char*) ; 

__attribute__((used)) static int FUNC2(struct rdtgroup *rdtgrp)
{
	int ret;

	ret = FUNC0(rdtgrp, "tasks", 0777);
	if (ret)
		return ret;

	ret = FUNC0(rdtgrp, "cpus", 0777);
	if (ret)
		goto err_tasks;

	ret = FUNC0(rdtgrp, "cpus_list", 0777);
	if (ret)
		goto err_cpus;

	if (rdt_mon_capable) {
		ret = FUNC0(rdtgrp, "mon_groups", 0777);
		if (ret)
			goto err_cpus_list;
	}

	ret = 0;
	goto out;

err_cpus_list:
	FUNC1(rdtgrp, "cpus_list");
err_cpus:
	FUNC1(rdtgrp, "cpus");
err_tasks:
	FUNC1(rdtgrp, "tasks");
out:
	return ret;
}