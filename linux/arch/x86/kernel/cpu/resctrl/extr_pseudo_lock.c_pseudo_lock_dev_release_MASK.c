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
struct rdtgroup {int /*<<< orphan*/  waitcount; } ;
struct inode {int dummy; } ;
struct file {struct rdtgroup* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rdtgroup_mutex ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filp)
{
	struct rdtgroup *rdtgrp;

	FUNC2(&rdtgroup_mutex);
	rdtgrp = filp->private_data;
	FUNC0(!rdtgrp);
	if (!rdtgrp) {
		FUNC3(&rdtgroup_mutex);
		return -ENODEV;
	}
	filp->private_data = NULL;
	FUNC1(&rdtgrp->waitcount);
	FUNC3(&rdtgroup_mutex);
	return 0;
}