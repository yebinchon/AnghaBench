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
struct TYPE_5__ {int flags; } ;
struct ata_queued_cmd {TYPE_2__ tf; } ;
struct TYPE_4__ {int /*<<< orphan*/  active_tag; } ;
struct ata_port {TYPE_3__* ops; TYPE_1__ link; } ;
struct ata_host {unsigned int n_ports; int /*<<< orphan*/  lock; struct ata_port** ports; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* sff_check_status ) (struct ata_port*) ;} ;

/* Variables and functions */
 int ATA_TFLAG_POLLING ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct ata_port*,struct ata_queued_cmd*) ; 
 struct ata_queued_cmd* FUNC2 (struct ata_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_port*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_instance)
{
	struct ata_host *host = dev_instance;
	unsigned int i;
	unsigned int handled = 0;
	unsigned long flags;

	FUNC3(&host->lock, flags);

	for (i = 0; i < host->n_ports; i++) {
		struct ata_port *ap = host->ports[i];
		struct ata_queued_cmd *qc;

		qc = FUNC2(ap, ap->link.active_tag);
		if (qc && (!(qc->tf.flags & ATA_TFLAG_POLLING))) {
			handled += FUNC1(ap, qc);
		} else {
			/*
			 * No request pending?  Clear interrupt status
			 * anyway, in case there's one pending.
			 */
			ap->ops->sff_check_status(ap);
		}
	}

	FUNC4(&host->lock, flags);

	return FUNC0(handled);
}