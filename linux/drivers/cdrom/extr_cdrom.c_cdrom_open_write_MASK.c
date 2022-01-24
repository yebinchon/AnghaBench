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
struct cdrom_device_info {int mask; } ;

/* Variables and functions */
 int CDC_CD_R ; 
 int CDC_CD_RW ; 
 int CDC_DVD ; 
 int CDC_DVD_R ; 
 int CDC_DVD_RAM ; 
 int CDC_MO_DRIVE ; 
 int CDC_MRW ; 
 int CDC_MRW_W ; 
 int CDC_RAM ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct cdrom_device_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdrom_device_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct cdrom_device_info*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct cdrom_device_info*,int*) ; 
 int FUNC5 (struct cdrom_device_info*) ; 
 int FUNC6 (struct cdrom_device_info*) ; 
 int FUNC7 (struct cdrom_device_info*) ; 

__attribute__((used)) static int FUNC8(struct cdrom_device_info *cdi)
{
	int mrw, mrw_write, ram_write;
	int ret = 1;

	mrw = 0;
	if (!FUNC3(cdi, &mrw_write))
		mrw = 1;

	if (FUNC0(CDC_MO_DRIVE))
		ram_write = 1;
	else
		(void) FUNC4(cdi, &ram_write);
	
	if (mrw)
		cdi->mask &= ~CDC_MRW;
	else
		cdi->mask |= CDC_MRW;

	if (mrw_write)
		cdi->mask &= ~CDC_MRW_W;
	else
		cdi->mask |= CDC_MRW_W;

	if (ram_write)
		cdi->mask &= ~CDC_RAM;
	else
		cdi->mask |= CDC_RAM;

	if (FUNC0(CDC_MRW_W))
		ret = FUNC5(cdi);
	else if (FUNC0(CDC_DVD_RAM))
		ret = FUNC1(cdi);
 	else if (FUNC0(CDC_RAM) &&
 		 !FUNC0(CDC_CD_R|CDC_CD_RW|CDC_DVD|CDC_DVD_R|CDC_MRW|CDC_MO_DRIVE))
 		ret = FUNC6(cdi);
	else if (FUNC0(CDC_MO_DRIVE))
		ret = FUNC7(cdi);
	else if (!FUNC2(cdi))
		ret = 0;

	return ret;
}