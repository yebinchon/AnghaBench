#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
struct spu_gang {int dummy; } ;
struct inode {int i_mode; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct spu_gang* i_gang; int /*<<< orphan*/ * i_ctx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int S_IFDIR ; 
 int S_ISGID ; 
 struct spu_gang* FUNC1 () ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	int ret;
	struct inode *inode;
	struct spu_gang *gang;

	ret = -ENOSPC;
	inode = FUNC6(dir->i_sb, mode | S_IFDIR);
	if (!inode)
		goto out;

	ret = 0;
	if (dir->i_mode & S_ISGID) {
		inode->i_gid = dir->i_gid;
		inode->i_mode &= S_ISGID;
	}
	gang = FUNC1();
	FUNC0(inode)->i_ctx = NULL;
	FUNC0(inode)->i_gang = gang;
	if (!gang) {
		ret = -ENOMEM;
		goto out_iput;
	}

	inode->i_op = &simple_dir_inode_operations;
	inode->i_fop = &simple_dir_operations;

	FUNC3(dentry, inode);
	FUNC4(dir);
	FUNC4(FUNC2(dentry));
	return ret;

out_iput:
	FUNC5(inode);
out:
	return ret;
}