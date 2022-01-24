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
struct gendisk {struct drbd_device* private_data; } ;
struct drbd_device {int /*<<< orphan*/  open_cnt; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  drbd_main_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct gendisk *gd, fmode_t mode)
{
	struct drbd_device *device = gd->private_data;
	FUNC0(&drbd_main_mutex);
	device->open_cnt--;
	FUNC1(&drbd_main_mutex);
}