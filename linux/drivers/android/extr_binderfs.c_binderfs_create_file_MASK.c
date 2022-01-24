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
struct super_block {int dummy; } ;
struct inode {void* i_private; struct file_operations const* i_fop; struct super_block* i_sb; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int S_IFREG ; 
 struct dentry* FUNC2 (struct dentry*,char const*) ; 
 struct inode* FUNC3 (struct super_block*,int) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 

struct dentry *FUNC10(struct dentry *parent, const char *name,
				    const struct file_operations *fops,
				    void *data)
{
	struct dentry *dentry;
	struct inode *new_inode, *parent_inode;
	struct super_block *sb;

	parent_inode = FUNC4(parent);
	FUNC8(parent_inode);

	dentry = FUNC2(parent, name);
	if (FUNC1(dentry))
		goto out;

	sb = parent_inode->i_sb;
	new_inode = FUNC3(sb, S_IFREG | 0444);
	if (!new_inode) {
		FUNC6(dentry);
		dentry = FUNC0(-ENOMEM);
		goto out;
	}

	new_inode->i_fop = fops;
	new_inode->i_private = data;
	FUNC5(dentry, new_inode);
	FUNC7(parent_inode, dentry);

out:
	FUNC9(parent_inode);
	return dentry;
}