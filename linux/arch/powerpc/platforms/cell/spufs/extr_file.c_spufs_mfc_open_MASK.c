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
struct spufs_inode_info {int /*<<< orphan*/  i_openers; struct spu_context* i_ctx; } ;
struct spu_context {scalar_t__ owner; int /*<<< orphan*/  mapping_lock; int /*<<< orphan*/  mfc; } ;
struct inode {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_count; } ;
struct file {struct spu_context* private_data; } ;
struct TYPE_2__ {scalar_t__ mm; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct spufs_inode_info* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct spufs_inode_info *i = FUNC0(inode);
	struct spu_context *ctx = i->i_ctx;

	/* we don't want to deal with DMA into other processes */
	if (ctx->owner != current->mm)
		return -EINVAL;

	if (FUNC1(&inode->i_count) != 1)
		return -EBUSY;

	FUNC2(&ctx->mapping_lock);
	file->private_data = ctx;
	if (!i->i_openers++)
		ctx->mfc = inode->i_mapping;
	FUNC3(&ctx->mapping_lock);
	return FUNC4(inode, file);
}