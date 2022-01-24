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
struct pata_pxa_data {int /*<<< orphan*/  dma_chan; int /*<<< orphan*/  dma_done; } ;
struct ata_queued_cmd {TYPE_1__* ap; } ;
struct TYPE_2__ {struct pata_pxa_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ata_queued_cmd *qc)
{
	struct pata_pxa_data *pd = qc->ap->private_data;
	FUNC1(&pd->dma_done);
	FUNC0(pd->dma_chan);
}