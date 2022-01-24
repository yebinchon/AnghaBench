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
struct diag210 {int dummy; } ;
struct TYPE_2__ {int (* diag210 ) (struct diag210*) ;} ;
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  DIAG_STAT_X210 ; 
 struct diag210* __diag210_tmp_dma ; 
 TYPE_1__ diag_dma_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct diag210*) ; 

int FUNC4(struct diag210 *addr)
{
	static DEFINE_SPINLOCK(diag210_lock);
	unsigned long flags;
	int ccode;

	FUNC1(&diag210_lock, flags);
	*__diag210_tmp_dma = *addr;

	FUNC0(DIAG_STAT_X210);
	ccode = diag_dma_ops.diag210(__diag210_tmp_dma);

	*addr = *__diag210_tmp_dma;
	FUNC2(&diag210_lock, flags);

	return ccode;
}