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
struct ata_queued_cmd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  active_tag; } ;
struct ata_port {TYPE_1__ link; } ;

/* Variables and functions */
 int FUNC0 (struct ata_port*,struct ata_queued_cmd*) ; 
 struct ata_queued_cmd* FUNC1 (struct ata_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*) ; 

__attribute__((used)) static void FUNC3(struct ata_port *ap)
{
	struct ata_queued_cmd *qc;
	int handled = 0;

	qc = FUNC1(ap, ap->link.active_tag);
	if (qc)
		handled |= FUNC0(ap, qc);

	/* be sure to clear ATA interrupt */
	if (!handled)
		FUNC2(ap);
}