#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pata_icside_state {int /*<<< orphan*/  dma; TYPE_2__* port; int /*<<< orphan*/  ioc_base; } ;
struct TYPE_10__ {unsigned int flags; } ;
struct ata_queued_cmd {TYPE_5__ tf; int /*<<< orphan*/  n_elem; int /*<<< orphan*/  sg; TYPE_3__* dev; struct ata_port* ap; } ;
struct ata_port {size_t port_no; TYPE_4__* ops; TYPE_1__* host; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* sff_exec_command ) (struct ata_port*,TYPE_5__*) ;} ;
struct TYPE_8__ {size_t devno; } ;
struct TYPE_7__ {int /*<<< orphan*/ * speed; int /*<<< orphan*/  port_sel; } ;
struct TYPE_6__ {struct pata_icside_state* private_data; } ;

/* Variables and functions */
 unsigned int ATA_TFLAG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_MODE_READ ; 
 int /*<<< orphan*/  DMA_MODE_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_port*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct pata_icside_state *state = ap->host->private_data;
	unsigned int write = qc->tf.flags & ATA_TFLAG_WRITE;

	/*
	 * We are simplex; BUG if we try to fiddle with DMA
	 * while it's active.
	 */
	FUNC0(FUNC1(state->dma));

	/*
	 * Route the DMA signals to the correct interface
	 */
	FUNC6(state->port[ap->port_no].port_sel, state->ioc_base);

	FUNC4(state->dma, state->port[ap->port_no].speed[qc->dev->devno]);
	FUNC3(state->dma, qc->sg, qc->n_elem);
	FUNC2(state->dma, write ? DMA_MODE_WRITE : DMA_MODE_READ);

	/* issue r/w command */
	ap->ops->sff_exec_command(ap, &qc->tf);
}