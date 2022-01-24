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
typedef  int /*<<< orphan*/  u8 ;
struct ata_port {int dummy; } ;
struct ata_link {int /*<<< orphan*/ * device; struct ata_port* ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct ata_link*,char*,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ata_port*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ata_port*,unsigned long) ; 
 scalar_t__ FUNC5 (struct ata_link*) ; 

__attribute__((used)) static int FUNC6(struct ata_link *link, unsigned int *classes,
			       unsigned long deadline)
{
	struct ata_port *ap = link->ap;
	unsigned int devmask = 0;
	int rc;
	u8 err;

	/* determine if device 0 is present */
	if (FUNC3(ap, 0))
		devmask |= 1 << 0;

	/* issue bus reset */
	FUNC0("about to softreset, devmask=%x\n", devmask);
	rc = FUNC4(ap, deadline);
	/* if link is occupied, -ENODEV too is an error */
	if (rc && (rc != -ENODEV || FUNC5(link))) {
		FUNC1(link, "SRST failed (errno=%d)\n", rc);
		return rc;
	}

	/* determine by signature whether we have ATA or ATAPI devices */
	classes[0] = FUNC2(&link->device[0], devmask, &err);

	FUNC0("classes[0]=%u\n", classes[0]);
	return 0;
}