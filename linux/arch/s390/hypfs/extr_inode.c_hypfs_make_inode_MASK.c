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
typedef  int /*<<< orphan*/  umode_t ;
struct super_block {struct hypfs_sb_info* s_fs_info; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; } ;
struct hypfs_sb_info {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct inode* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 

__attribute__((used)) static struct inode *FUNC5(struct super_block *sb, umode_t mode)
{
	struct inode *ret = FUNC3(sb);

	if (ret) {
		struct hypfs_sb_info *hypfs_info = sb->s_fs_info;
		ret->i_ino = FUNC2();
		ret->i_mode = mode;
		ret->i_uid = hypfs_info->uid;
		ret->i_gid = hypfs_info->gid;
		ret->i_atime = ret->i_mtime = ret->i_ctime = FUNC1(ret);
		if (FUNC0(mode))
			FUNC4(ret, 2);
	}
	return ret;
}