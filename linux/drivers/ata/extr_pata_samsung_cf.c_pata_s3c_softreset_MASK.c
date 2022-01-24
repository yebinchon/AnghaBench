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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/ * device; } ;
struct ata_port {TYPE_1__ link; } ;
struct ata_link {struct ata_port* ap; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct ata_link*,char*,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ata_port*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ata_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ata_link *link, unsigned int *classes,
			 unsigned long deadline)
{
	struct ata_port *ap = link->ap;
	unsigned int devmask = 0;
	int rc;
	u8 err;

	/* determine if device 0 is present */
	if (FUNC4(ap, 0))
		devmask |= (1 << 0);

	/* select device 0 again */
	FUNC3(ap, 0);

	/* issue bus reset */
	rc = FUNC2(ap, deadline);
	/* if link is occupied, -ENODEV too is an error */
	if (rc && rc != -ENODEV) {
		FUNC0(link, "SRST failed (errno=%d)\n", rc);
		return rc;
	}

	/* determine by signature whether we have ATA or ATAPI devices */
	classes[0] = FUNC1(&ap->link.device[0],
					  devmask & (1 << 0), &err);

	return 0;
}