#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int active; TYPE_1__* d_ops; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ dma_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* enable ) (unsigned int,TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,TYPE_2__*) ; 

void FUNC4 (unsigned int chan)
{
	dma_t *dma = FUNC1(chan);

	if (!dma->lock)
		goto free_dma;

	if (dma->active == 0) {
		dma->active = 1;
		dma->d_ops->enable(chan, dma);
	}
	return;

free_dma:
	FUNC2("dma%d: trying to enable free DMA\n", chan);
	FUNC0();
}