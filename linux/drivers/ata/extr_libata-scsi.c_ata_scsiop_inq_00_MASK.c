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
typedef  int u8 ;
struct ata_scsi_args {TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  pages ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int ATA_DFLAG_ZAC ; 
 int /*<<< orphan*/  FUNC0 (int*,int const*,int) ; 

__attribute__((used)) static unsigned int FUNC1(struct ata_scsi_args *args, u8 *rbuf)
{
	int num_pages;
	static const u8 pages[] = {
		0x00,	/* page 0x00, this page */
		0x80,	/* page 0x80, unit serial no page */
		0x83,	/* page 0x83, device ident page */
		0x89,	/* page 0x89, ata info page */
		0xb0,	/* page 0xb0, block limits page */
		0xb1,	/* page 0xb1, block device characteristics page */
		0xb2,	/* page 0xb2, thin provisioning page */
		0xb6,	/* page 0xb6, zoned block device characteristics */
	};

	num_pages = sizeof(pages);
	if (!(args->dev->flags & ATA_DFLAG_ZAC))
		num_pages--;
	rbuf[3] = num_pages;	/* number of supported VPD pages */
	FUNC0(rbuf + 4, pages, num_pages);
	return 0;
}