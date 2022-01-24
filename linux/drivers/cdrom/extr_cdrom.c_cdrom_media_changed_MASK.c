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
struct cdrom_device_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/ * media_changed; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDC_MEDIA_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cdrom_device_info*,int /*<<< orphan*/ ) ; 

int FUNC2(struct cdrom_device_info *cdi)
{
	/* This talks to the VFS, which doesn't like errors - just 1 or 0.  
	 * Returning "0" is always safe (media hasn't been changed). Do that 
	 * if the low-level cdrom driver dosn't support media changed. */ 
	if (cdi == NULL || cdi->ops->media_changed == NULL)
		return 0;
	if (!FUNC0(CDC_MEDIA_CHANGED))
		return 0;
	return FUNC1(cdi, 0);
}