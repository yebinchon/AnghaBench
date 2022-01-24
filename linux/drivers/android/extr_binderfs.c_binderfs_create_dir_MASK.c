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
struct inode {int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; struct super_block* i_sb; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int S_IFDIR ; 
 struct dentry* FUNC2 (struct dentry*,char const*) ; 
 struct inode* FUNC3 (struct super_block*,int) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 

__attribute__((used)) static struct dentry *FUNC12(struct dentry *parent,
					  const char *name)
{
	struct dentry *dentry;
	struct inode *new_inode, *parent_inode;
	struct super_block *sb;

	parent_inode = FUNC4(parent);
	FUNC9(parent_inode);

	dentry = FUNC2(parent, name);
	if (FUNC1(dentry))
		goto out;

	sb = parent_inode->i_sb;
	new_inode = FUNC3(sb, S_IFDIR | 0755);
	if (!new_inode) {
		FUNC6(dentry);
		dentry = FUNC0(-ENOMEM);
		goto out;
	}

	new_inode->i_fop = &simple_dir_operations;
	new_inode->i_op = &simple_dir_inode_operations;

	FUNC11(new_inode, 2);
	FUNC5(dentry, new_inode);
	FUNC8(parent_inode);
	FUNC7(parent_inode, dentry);

out:
	FUNC10(parent_inode);
	return dentry;
}