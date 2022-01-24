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
struct ata_link {TYPE_2__* ap; } ;
struct TYPE_4__ {int flags; struct ata_link* slave_link; TYPE_1__* host; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int ATA_FLAG_SATA ; 
 int ATA_HOST_PARALLEL_SCAN ; 
 int /*<<< orphan*/  ATA_TMOUT_FF_WAIT ; 
 int /*<<< orphan*/  ATA_TMOUT_FF_WAIT_LONG ; 
 int EBUSY ; 
 int ENODEV ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_link*) ; 
 scalar_t__ FUNC3 (struct ata_link*) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_link*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

int FUNC8(struct ata_link *link, unsigned long deadline,
		   int (*check_ready)(struct ata_link *link))
{
	unsigned long start = jiffies;
	unsigned long nodev_deadline;
	int warned = 0;

	/* choose which 0xff timeout to use, read comment in libata.h */
	if (link->ap->host->flags & ATA_HOST_PARALLEL_SCAN)
		nodev_deadline = FUNC1(start, ATA_TMOUT_FF_WAIT_LONG);
	else
		nodev_deadline = FUNC1(start, ATA_TMOUT_FF_WAIT);

	/* Slave readiness can't be tested separately from master.  On
	 * M/S emulation configuration, this function should be called
	 * only on the master and it will handle both master and slave.
	 */
	FUNC0(link == link->ap->slave_link);

	if (FUNC6(nodev_deadline, deadline))
		nodev_deadline = deadline;

	while (1) {
		unsigned long now = jiffies;
		int ready, tmp;

		ready = tmp = check_ready(link);
		if (ready > 0)
			return 0;

		/*
		 * -ENODEV could be transient.  Ignore -ENODEV if link
		 * is online.  Also, some SATA devices take a long
		 * time to clear 0xff after reset.  Wait for
		 * ATA_TMOUT_FF_WAIT[_LONG] on -ENODEV if link isn't
		 * offline.
		 *
		 * Note that some PATA controllers (pata_ali) explode
		 * if status register is read more than once when
		 * there's no device attached.
		 */
		if (ready == -ENODEV) {
			if (FUNC3(link))
				ready = 0;
			else if ((link->ap->flags & ATA_FLAG_SATA) &&
				 !FUNC2(link) &&
				 FUNC7(now, nodev_deadline))
				ready = 0;
		}

		if (ready)
			return ready;
		if (FUNC6(now, deadline))
			return -EBUSY;

		if (!warned && FUNC6(now, start + 5 * HZ) &&
		    (deadline - now > 3 * HZ)) {
			FUNC4(link,
				"link is slow to respond, please be patient "
				"(ready=%d)\n", tmp);
			warned = 1;
		}

		FUNC5(link->ap, 50);
	}
}