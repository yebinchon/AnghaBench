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
struct inode {int dummy; } ;
struct file {struct binder_proc* private_data; } ;
struct binder_proc {int /*<<< orphan*/ * binderfs_entry; int /*<<< orphan*/  debugfs_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_DEFERRED_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (struct binder_proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *nodp, struct file *filp)
{
	struct binder_proc *proc = filp->private_data;

	FUNC2(proc->debugfs_entry);

	if (proc->binderfs_entry) {
		FUNC1(proc->binderfs_entry);
		proc->binderfs_entry = NULL;
	}

	FUNC0(proc, BINDER_DEFERRED_RELEASE);

	return 0;
}