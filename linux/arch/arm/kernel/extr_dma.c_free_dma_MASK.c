#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* d_ops; int /*<<< orphan*/  lock; scalar_t__ active; } ;
typedef  TYPE_2__ dma_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* free ) (unsigned int,TYPE_2__*) ;int /*<<< orphan*/  (* disable ) (unsigned int,TYPE_2__*) ;} ;

/* Variables and functions */
 TYPE_2__* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(unsigned int chan)
{
	dma_t *dma = FUNC0(chan);

	if (!dma)
		goto bad_dma;

	if (dma->active) {
		FUNC1("dma%d: freeing active DMA\n", chan);
		dma->d_ops->disable(chan, dma);
		dma->active = 0;
	}

	if (FUNC4(&dma->lock, 0) != 0) {
		if (dma->d_ops->free)
			dma->d_ops->free(chan, dma);
		return;
	}

	FUNC1("dma%d: trying to free free DMA\n", chan);
	return;

bad_dma:
	FUNC1("dma: trying to free DMA%d\n", chan);
}