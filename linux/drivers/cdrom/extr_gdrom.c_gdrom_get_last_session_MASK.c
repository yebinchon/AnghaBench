#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lba; } ;
struct cdrom_multisession {int xa_flag; TYPE_1__ addr; int /*<<< orphan*/  addr_format; } ;
struct cdrom_device_info {int dummy; } ;
struct TYPE_6__ {TYPE_2__* toc; } ;
struct TYPE_5__ {int* entry; int /*<<< orphan*/  first; int /*<<< orphan*/  last; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDROM_LBA ; 
 int ENOMEM ; 
 int ENXIO ; 
 TYPE_3__ gd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct cdrom_device_info *cd_info,
	struct cdrom_multisession *ms_info)
{
	int fentry, lentry, track, data, err;

	if (!gd.toc)
		return -ENOMEM;

	/* Check if GD-ROM */
	err = FUNC1(gd.toc, 1);
	/* Not a GD-ROM so check if standard CD-ROM */
	if (err) {
		err = FUNC1(gd.toc, 0);
		if (err) {
			FUNC5("Could not get CD table of contents\n");
			return -ENXIO;
		}
	}

	fentry = FUNC4(gd.toc->first);
	lentry = FUNC4(gd.toc->last);
	/* Find the first data track */
	track = FUNC4(gd.toc->last);
	do {
		data = gd.toc->entry[track - 1];
		if (FUNC3(data))
			break;	/* ie a real data track */
		track--;
	} while (track >= fentry);

	if ((track > 100) || (track < FUNC4(gd.toc->first))) {
		FUNC5("No data on the last session of the CD\n");
		FUNC0(NULL);
		return -ENXIO;
	}

	ms_info->addr_format = CDROM_LBA;
	ms_info->addr.lba = FUNC2(data);
	ms_info->xa_flag = 1;
	return 0;
}