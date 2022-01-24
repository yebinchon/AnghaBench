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
struct ata_port {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sff_irq_clear ) (struct ata_port*) ;int /*<<< orphan*/  (* sff_check_status ) (struct ata_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*) ; 

void FUNC3(struct ata_port *ap)
{
	/* clear & re-enable interrupts */
	ap->ops->sff_check_status(ap);
	if (ap->ops->sff_irq_clear)
		ap->ops->sff_irq_clear(ap);
	FUNC0(ap);
}