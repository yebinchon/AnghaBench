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
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long* FUNC3 (unsigned long*) ; 
 unsigned long* FUNC4 (unsigned long*) ; 

unsigned long *FUNC5(unsigned long *rto, dma_addr_t dma_addr)
{
	unsigned long *sto, *pto;
	unsigned int rtx, sx, px;

	rtx = FUNC1(dma_addr);
	sto = FUNC4(&rto[rtx]);
	if (!sto)
		return NULL;

	sx = FUNC2(dma_addr);
	pto = FUNC3(&sto[sx]);
	if (!pto)
		return NULL;

	px = FUNC0(dma_addr);
	return &pto[px];
}