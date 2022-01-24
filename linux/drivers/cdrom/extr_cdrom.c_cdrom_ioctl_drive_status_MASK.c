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
struct cdrom_device_info {unsigned long capacity; TYPE_1__* ops; } ;
struct TYPE_2__ {int capability; int (* drive_status ) (struct cdrom_device_info*,unsigned long) ;} ;

/* Variables and functions */
 int CDC_DRIVE_STATUS ; 
 int /*<<< orphan*/  CDC_SELECT_DISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long CDSL_CURRENT ; 
 unsigned long CDSL_NONE ; 
 int /*<<< orphan*/  CD_DO_IOCTL ; 
 int EINVAL ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct cdrom_device_info*,unsigned long) ; 
 int FUNC3 (struct cdrom_device_info*,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct cdrom_device_info *cdi,
		unsigned long arg)
{
	FUNC1(CD_DO_IOCTL, "entering CDROM_DRIVE_STATUS\n");

	if (!(cdi->ops->capability & CDC_DRIVE_STATUS))
		return -ENOSYS;
	if (!FUNC0(CDC_SELECT_DISC) ||
	    (arg == CDSL_CURRENT || arg == CDSL_NONE))
		return cdi->ops->drive_status(cdi, CDSL_CURRENT);
	if (arg >= cdi->capacity)
		return -EINVAL;
	return FUNC2(cdi, arg);
}