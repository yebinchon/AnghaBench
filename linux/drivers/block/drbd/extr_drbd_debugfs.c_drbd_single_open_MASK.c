#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kref {int dummy; } ;
struct TYPE_3__ {TYPE_2__* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {struct dentry* d_parent; } ;

/* Variables and functions */
 int ESTALE ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kref*) ; 
 int /*<<< orphan*/  FUNC4 (struct kref*,void (*) (struct kref*)) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int FUNC6 (struct file*,int (*) (struct seq_file*,void*),void*) ; 

__attribute__((used)) static int FUNC7(struct file *file, int (*show)(struct seq_file *, void *),
		                void *data, struct kref *kref,
				void (*release)(struct kref *))
{
	struct dentry *parent;
	int ret = -ESTALE;

	/* Are we still linked,
	 * or has debugfs_remove() already been called? */
	parent = file->f_path.dentry->d_parent;
	/* serialize with d_delete() */
	FUNC1(FUNC0(parent));
	/* Make sure the object is still alive */
	if (FUNC5(file->f_path.dentry)
	&& FUNC3(kref))
		ret = 0;
	FUNC2(FUNC0(parent));
	if (!ret) {
		ret = FUNC6(file, show, data);
		if (ret)
			FUNC4(kref, release);
	}
	return ret;
}