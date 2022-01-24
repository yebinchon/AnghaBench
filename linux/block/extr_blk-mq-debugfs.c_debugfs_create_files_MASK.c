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
struct dentry {int dummy; } ;
struct blk_mq_debugfs_attr {int /*<<< orphan*/  mode; scalar_t__ name; } ;
struct TYPE_2__ {void* i_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  blk_mq_debugfs_fops ; 
 TYPE_1__* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,struct dentry*,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dentry *parent, void *data,
				 const struct blk_mq_debugfs_attr *attr)
{
	if (FUNC0(parent))
		return;

	FUNC1(parent)->i_private = data;

	for (; attr->name; attr++)
		FUNC2(attr->name, attr->mode, parent,
				    (void *)attr, &blk_mq_debugfs_fops);
}