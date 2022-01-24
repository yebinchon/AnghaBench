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
struct TYPE_4__ {int /*<<< orphan*/  action; } ;
struct ata_eh_context {TYPE_2__ i; } ;
struct TYPE_3__ {scalar_t__ sactive; struct ata_eh_context eh_context; } ;
struct ata_port {TYPE_1__ link; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_EH_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap)
{
	struct ata_eh_context *ehc = &ap->link.eh_context;

	if (ap->link.sactive) {
		FUNC1(ap);
		ehc->i.action |= ATA_EH_RESET;
	}

	FUNC0(ap);
}