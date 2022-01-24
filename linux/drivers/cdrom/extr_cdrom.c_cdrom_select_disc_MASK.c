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
struct cdrom_device_info {int mc_flags; int use_count; scalar_t__ keeplocked; TYPE_1__* ops; } ;
struct TYPE_4__ {int curslot; } ;
struct cdrom_changer_info {TYPE_2__ hdr; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* media_changed ) (struct cdrom_device_info*,int) ;int /*<<< orphan*/  (* check_events ) (struct cdrom_device_info*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CDC_SELECT_DISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CDSL_CURRENT ; 
 int CDSL_NONE ; 
 int /*<<< orphan*/  CD_CHANGER ; 
 int EBUSY ; 
 int EDRIVE_CANT_DO_THIS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct cdrom_device_info*,int) ; 
 int FUNC3 (struct cdrom_device_info*,struct cdrom_changer_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct cdrom_changer_info*) ; 
 struct cdrom_changer_info* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cdrom_device_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cdrom_device_info*,int) ; 

__attribute__((used)) static int FUNC8(struct cdrom_device_info *cdi, int slot)
{
	struct cdrom_changer_info *info;
	int curslot;
	int ret;

	FUNC1(CD_CHANGER, "entering cdrom_select_disc()\n");
	if (!FUNC0(CDC_SELECT_DISC))
		return -EDRIVE_CANT_DO_THIS;

	if (cdi->ops->check_events)
		cdi->ops->check_events(cdi, 0, slot);
	else
		cdi->ops->media_changed(cdi, slot);

	if (slot == CDSL_NONE) {
		/* set media changed bits, on both queues */
		cdi->mc_flags = 0x3;
		return FUNC2(cdi, -1);
	}

	info = FUNC5(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	if ((ret = FUNC3(cdi, info))) {
		FUNC4(info);
		return ret;
	}

	curslot = info->hdr.curslot;
	FUNC4(info);

	if (cdi->use_count > 1 || cdi->keeplocked) {
		if (slot == CDSL_CURRENT) {
	    		return curslot;
		} else {
			return -EBUSY;
		}
	}

	/* Specifying CDSL_CURRENT will attempt to load the currnet slot,
	which is useful if it had been previously unloaded.
	Whether it can or not, it returns the current slot. 
	Similarly,  if slot happens to be the current one, we still
	try and load it. */
	if (slot == CDSL_CURRENT)
		slot = curslot;

	/* set media changed bits on both queues */
	cdi->mc_flags = 0x3;
	if ((ret = FUNC2(cdi, slot)))
		return ret;

	return slot;
}