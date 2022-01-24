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
struct ata_port {int /*<<< orphan*/  sff_pio_task; struct ata_link* sff_pio_task_link; } ;
struct ata_link {struct ata_port* ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

void FUNC3(struct ata_link *link, unsigned long delay)
{
	struct ata_port *ap = link->ap;

	FUNC0((ap->sff_pio_task_link != NULL) &&
		(ap->sff_pio_task_link != link));
	ap->sff_pio_task_link = link;

	/* may fail if ata_sff_flush_pio_task() in progress */
	FUNC1(&ap->sff_pio_task, FUNC2(delay));
}