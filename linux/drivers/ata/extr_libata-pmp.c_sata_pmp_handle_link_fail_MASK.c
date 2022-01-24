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
struct ata_port {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {scalar_t__ action; } ;
struct TYPE_4__ {TYPE_1__ i; } ;
struct ata_link {size_t pmp; int flags; TYPE_2__ eh_context; int /*<<< orphan*/  device; struct ata_port* ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_EH_PMP_LINK_TRIES ; 
 int ATA_LFLAG_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_link*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ata_link *link, int *link_tries)
{
	struct ata_port *ap = link->ap;
	unsigned long flags;

	if (link_tries[link->pmp] && --link_tries[link->pmp])
		return 1;

	/* disable this link */
	if (!(link->flags & ATA_LFLAG_DISABLED)) {
		FUNC1(link,
			"failed to recover link after %d tries, disabling\n",
			ATA_EH_PMP_LINK_TRIES);

		FUNC2(ap->lock, flags);
		link->flags |= ATA_LFLAG_DISABLED;
		FUNC3(ap->lock, flags);
	}

	FUNC0(link->device);
	link->eh_context.i.action = 0;

	return 0;
}