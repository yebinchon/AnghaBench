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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int (* dma_read ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* dma_write ) (int,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CCR ; 
 int /*<<< orphan*/  CSDP ; 
 int /*<<< orphan*/  CSEI ; 
 int /*<<< orphan*/  CSFI ; 
 int /*<<< orphan*/  CSSA ; 
 scalar_t__ FUNC0 () ; 
 TYPE_1__* p ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int) ; 

void FUNC8(int lch, int src_port, int src_amode,
			     unsigned long src_start,
			     int src_ei, int src_fi)
{
	u32 l;

	if (FUNC0()) {
		u16 w;

		w = p->dma_read(CSDP, lch);
		w &= ~(0x1f << 2);
		w |= src_port << 2;
		p->dma_write(w, CSDP, lch);
	}

	l = p->dma_read(CCR, lch);
	l &= ~(0x03 << 12);
	l |= src_amode << 12;
	p->dma_write(l, CCR, lch);

	p->dma_write(src_start, CSSA, lch);

	p->dma_write(src_ei, CSEI, lch);
	p->dma_write(src_fi, CSFI, lch);
}