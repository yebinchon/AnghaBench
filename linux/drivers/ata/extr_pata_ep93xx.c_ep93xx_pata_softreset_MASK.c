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
struct ata_port {unsigned int flags; TYPE_1__* ops; } ;
struct ata_link {int /*<<< orphan*/ * device; struct ata_port* ap; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sff_dev_select ) (struct ata_port*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 unsigned int ATA_FLAG_SLAVE_POSS ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct ata_link*,char*,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,unsigned int,int*) ; 
 int FUNC2 (struct ata_port*,unsigned int,unsigned long) ; 
 scalar_t__ FUNC3 (struct ata_port*,int) ; 
 scalar_t__ FUNC4 (struct ata_link*) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ata_link *al, unsigned int *classes,
				 unsigned long deadline)
{
	struct ata_port *ap = al->ap;
	unsigned int slave_possible = ap->flags & ATA_FLAG_SLAVE_POSS;
	unsigned int devmask = 0;
	int rc;
	u8 err;

	/* determine if device 0/1 are present */
	if (FUNC3(ap, 0))
		devmask |= (1 << 0);
	if (slave_possible && FUNC3(ap, 1))
		devmask |= (1 << 1);

	/* select device 0 again */
	ap->ops->sff_dev_select(al->ap, 0);

	/* issue bus reset */
	rc = FUNC2(ap, devmask, deadline);
	/* if link is ocuppied, -ENODEV too is an error */
	if (rc && (rc != -ENODEV || FUNC4(al))) {
		FUNC0(al, "SRST failed (errno=%d)\n", rc);
		return rc;
	}

	/* determine by signature whether we have ATA or ATAPI devices */
	classes[0] = FUNC1(&al->device[0], devmask & (1 << 0),
					  &err);
	if (slave_possible && err != 0x81)
		classes[1] = FUNC1(&al->device[1],
						  devmask & (1 << 1), &err);

	return 0;
}