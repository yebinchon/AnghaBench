#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mode; struct binder_device* i_private; } ;
struct binderfs_info {int /*<<< orphan*/  device_count; } ;
struct TYPE_3__ {struct binder_device* name; } ;
struct TYPE_4__ {int /*<<< orphan*/  minor; } ;
struct binder_device {TYPE_1__ context; TYPE_2__ miscdev; } ;

/* Variables and functions */
 struct binderfs_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  binderfs_minors ; 
 int /*<<< orphan*/  binderfs_minors_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct binder_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct inode *inode)
{
	struct binder_device *device = inode->i_private;
	struct binderfs_info *info = FUNC0(inode);

	FUNC2(inode);

	if (!FUNC1(inode->i_mode) || !device)
		return;

	FUNC5(&binderfs_minors_mutex);
	--info->device_count;
	FUNC3(&binderfs_minors, device->miscdev.minor);
	FUNC6(&binderfs_minors_mutex);

	FUNC4(device->context.name);
	FUNC4(device);
}