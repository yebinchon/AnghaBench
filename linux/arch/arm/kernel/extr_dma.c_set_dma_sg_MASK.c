#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct TYPE_3__ {int sgcount; int invalid; struct scatterlist* sg; scalar_t__ active; } ;
typedef  TYPE_1__ dma_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 

void FUNC2 (unsigned int chan, struct scatterlist *sg, int nr_sg)
{
	dma_t *dma = FUNC0(chan);

	if (dma->active)
		FUNC1("dma%d: altering DMA SG while DMA active\n", chan);

	dma->sg = sg;
	dma->sgcount = nr_sg;
	dma->invalid = 1;
}