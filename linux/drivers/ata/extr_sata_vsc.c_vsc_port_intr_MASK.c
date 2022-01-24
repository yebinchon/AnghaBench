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
typedef  int u8 ;
struct TYPE_6__ {int flags; } ;
struct ata_queued_cmd {TYPE_3__ tf; } ;
struct TYPE_5__ {int /*<<< orphan*/  active_tag; } ;
struct ata_port {TYPE_1__* ops; TYPE_2__ link; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* sff_check_status ) (struct ata_port*) ;} ;

/* Variables and functions */
 int ATA_TFLAG_POLLING ; 
 int VSC_SATA_INT_ERROR ; 
 int FUNC0 (struct ata_port*,struct ata_queued_cmd*) ; 
 struct ata_queued_cmd* FUNC1 (struct ata_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct ata_port*) ; 

__attribute__((used)) static void FUNC6(u8 port_status, struct ata_port *ap)
{
	struct ata_queued_cmd *qc;
	int handled = 0;

	if (FUNC4(port_status & VSC_SATA_INT_ERROR)) {
		FUNC5(port_status, ap);
		return;
	}

	qc = FUNC1(ap, ap->link.active_tag);
	if (qc && FUNC2(!(qc->tf.flags & ATA_TFLAG_POLLING)))
		handled = FUNC0(ap, qc);

	/* We received an interrupt during a polled command,
	 * or some other spurious condition.  Interrupt reporting
	 * with this hardware is fairly reliable so it is safe to
	 * simply clear the interrupt
	 */
	if (FUNC4(!handled))
		ap->ops->sff_check_status(ap);
}