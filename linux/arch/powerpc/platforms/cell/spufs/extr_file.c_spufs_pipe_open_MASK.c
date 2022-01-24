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
struct spufs_inode_info {int /*<<< orphan*/  i_ctx; } ;
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 struct spufs_inode_info* FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct spufs_inode_info *i = FUNC0(inode);
	file->private_data = i->i_ctx;

	return FUNC1(inode, file);
}