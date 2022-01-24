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
struct super_block {struct dentry* s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; struct hypfs_sb_info* s_fs_info; } ;
struct inode {int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct hypfs_sb_info {struct dentry* update_file; } ;
struct fs_context {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HYPFS_MAGIC ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 scalar_t__ MACHINE_IS_VM ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct dentry*) ; 
 int S_IFDIR ; 
 struct dentry* FUNC2 (struct inode*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int FUNC4 (struct dentry*) ; 
 struct inode* FUNC5 (struct super_block*,int) ; 
 int /*<<< orphan*/  hypfs_s_ops ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 

__attribute__((used)) static int FUNC9(struct super_block *sb, struct fs_context *fc)
{
	struct hypfs_sb_info *sbi = sb->s_fs_info;
	struct inode *root_inode;
	struct dentry *root_dentry, *update_file;
	int rc;

	sb->s_blocksize = PAGE_SIZE;
	sb->s_blocksize_bits = PAGE_SHIFT;
	sb->s_magic = HYPFS_MAGIC;
	sb->s_op = &hypfs_s_ops;

	root_inode = FUNC5(sb, S_IFDIR | 0755);
	if (!root_inode)
		return -ENOMEM;
	root_inode->i_op = &simple_dir_inode_operations;
	root_inode->i_fop = &simple_dir_operations;
	sb->s_root = root_dentry = FUNC2(root_inode);
	if (!root_dentry)
		return -ENOMEM;
	if (MACHINE_IS_VM)
		rc = FUNC7(root_dentry);
	else
		rc = FUNC4(root_dentry);
	if (rc)
		return rc;
	update_file = FUNC3(root_dentry);
	if (FUNC0(update_file))
		return FUNC1(update_file);
	sbi->update_file = update_file;
	FUNC6(sb);
	FUNC8("Hypervisor filesystem mounted\n");
	return 0;
}