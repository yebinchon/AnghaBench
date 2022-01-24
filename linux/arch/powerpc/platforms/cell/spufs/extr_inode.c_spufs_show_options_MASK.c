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
struct spufs_sb_info {scalar_t__ debug; } ;
struct seq_file {int dummy; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct dentry {struct inode* d_inode; int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int S_IALLUGO ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 
 struct spufs_sb_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct seq_file *m, struct dentry *root)
{
	struct spufs_sb_info *sbi = FUNC5(root->d_sb);
	struct inode *inode = root->d_inode;

	if (!FUNC6(inode->i_uid, GLOBAL_ROOT_UID))
		FUNC3(m, ",uid=%u",
			   FUNC1(&init_user_ns, inode->i_uid));
	if (!FUNC2(inode->i_gid, GLOBAL_ROOT_GID))
		FUNC3(m, ",gid=%u",
			   FUNC0(&init_user_ns, inode->i_gid));
	if ((inode->i_mode & S_IALLUGO) != 0775)
		FUNC3(m, ",mode=%o", inode->i_mode);
	if (sbi->debug)
		FUNC4(m, ",debug");
	return 0;
}