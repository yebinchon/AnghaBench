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
struct hypfs_sb_info {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  lock; } ;
struct fs_context {int /*<<< orphan*/ * ops; struct hypfs_sb_info* s_fs_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  hypfs_context_ops ; 
 struct hypfs_sb_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct fs_context *fc)
{
	struct hypfs_sb_info *sbi;

	sbi = FUNC2(sizeof(struct hypfs_sb_info), GFP_KERNEL);
	if (!sbi)
		return -ENOMEM;

	FUNC3(&sbi->lock);
	sbi->uid = FUNC1();
	sbi->gid = FUNC0();

	fc->s_fs_info = sbi;
	fc->ops = &hypfs_context_ops;
	return 0;
}