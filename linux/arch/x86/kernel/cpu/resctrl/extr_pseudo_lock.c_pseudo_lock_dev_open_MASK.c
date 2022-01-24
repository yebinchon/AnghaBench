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
struct file {int f_mode; struct rdtgroup* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int FMODE_LSEEK ; 
 int FMODE_PREAD ; 
 int FMODE_PWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rdtgroup_mutex ; 
 struct rdtgroup* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	struct rdtgroup *rdtgrp;

	FUNC2(&rdtgroup_mutex);

	rdtgrp = FUNC4(FUNC1(inode));
	if (!rdtgrp) {
		FUNC3(&rdtgroup_mutex);
		return -ENODEV;
	}

	filp->private_data = rdtgrp;
	FUNC0(&rdtgrp->waitcount);
	/* Perform a non-seekable open - llseek is not supported */
	filp->f_mode &= ~(FMODE_LSEEK | FMODE_PREAD | FMODE_PWRITE);

	FUNC3(&rdtgroup_mutex);

	return 0;
}