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
struct spu_context {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {struct dentry* d_parent; } ;
struct TYPE_4__ {struct spu_context* i_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int FUNC3 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,struct dentry*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct spu_context *ctx;
	struct inode *parent;
	struct dentry *dir;
	int ret;

	dir = file->f_path.dentry;
	parent = FUNC2(dir->d_parent);
	ctx = FUNC0(FUNC2(dir))->i_ctx;

	FUNC4(parent, I_MUTEX_PARENT);
	ret = FUNC6(parent, dir);
	FUNC5(parent);
	FUNC1(ret);

	return FUNC3(inode, file);
}