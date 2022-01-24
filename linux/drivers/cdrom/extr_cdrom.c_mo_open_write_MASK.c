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
struct packet_command {int quiet; int buflen; } ;
struct cdrom_device_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGC_DATA_READ ; 
 int /*<<< orphan*/  GPMODE_ALL_PAGES ; 
 int /*<<< orphan*/  GPMODE_VENDOR_PAGE ; 
 int FUNC0 (struct cdrom_device_info*,struct packet_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct packet_command*,char**,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cdrom_device_info *cdi)
{
	struct packet_command cgc;
	char buffer[255];
	int ret;

	FUNC1(&cgc, &buffer, 4, CGC_DATA_READ);
	cgc.quiet = 1;

	/*
	 * obtain write protect information as per
	 * drivers/scsi/sd.c:sd_read_write_protect_flag
	 */

	ret = FUNC0(cdi, &cgc, GPMODE_ALL_PAGES, 0);
	if (ret)
		ret = FUNC0(cdi, &cgc, GPMODE_VENDOR_PAGE, 0);
	if (ret) {
		cgc.buflen = 255;
		ret = FUNC0(cdi, &cgc, GPMODE_ALL_PAGES, 0);
	}

	/* drive gave us no info, let the user go ahead */
	if (ret)
		return 0;

	return buffer[3] & 0x80;
}