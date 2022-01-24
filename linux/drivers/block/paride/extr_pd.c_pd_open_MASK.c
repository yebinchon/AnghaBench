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
struct pd_unit {scalar_t__ removable; int /*<<< orphan*/  access; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {struct pd_unit* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pd_door_lock ; 
 int /*<<< orphan*/  pd_media_check ; 
 int /*<<< orphan*/  pd_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct pd_unit*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct block_device *bdev, fmode_t mode)
{
	struct pd_unit *disk = bdev->bd_disk->private_data;

	FUNC0(&pd_mutex);
	disk->access++;

	if (disk->removable) {
		FUNC2(disk, pd_media_check);
		FUNC2(disk, pd_door_lock);
	}
	FUNC1(&pd_mutex);
	return 0;
}