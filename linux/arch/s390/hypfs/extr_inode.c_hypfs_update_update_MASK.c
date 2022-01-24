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
struct super_block {struct hypfs_sb_info* s_fs_info; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; } ;
struct hypfs_sb_info {int /*<<< orphan*/  last_update; int /*<<< orphan*/  update_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct super_block *sb)
{
	struct hypfs_sb_info *sb_info = sb->s_fs_info;
	struct inode *inode = FUNC1(sb_info->update_file);

	sb_info->last_update = FUNC2();
	inode->i_atime = inode->i_mtime = inode->i_ctime = FUNC0(inode);
}