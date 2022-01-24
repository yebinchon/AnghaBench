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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ maddronly; int dma_ctrl; int /*<<< orphan*/  dtlb_lo3; int /*<<< orphan*/  dtlb_hi3; int /*<<< orphan*/  dtlb_lo2; int /*<<< orphan*/  dtlb_hi2; int /*<<< orphan*/  dtlb_lo1; int /*<<< orphan*/  dtlb_hi1; int /*<<< orphan*/  dtlb_lo0; int /*<<< orphan*/  dtlb_hi0; } ;

/* Variables and functions */
 int CPU_ERRMASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ cpu_err_addr ; 
 int cpu_err_stat ; 
 TYPE_1__* sgimc ; 

__attribute__((used)) static int FUNC1(void)
{
	if (cpu_err_stat & CPU_ERRMASK) {
		u32 a = sgimc->maddronly;

		if (!(sgimc->dma_ctrl & 0x100)) /* Xlate-bit clear ? */
			return cpu_err_addr == a;

		if (FUNC0(sgimc->dtlb_hi0, sgimc->dtlb_lo0, a) ||
		    FUNC0(sgimc->dtlb_hi1, sgimc->dtlb_lo1, a) ||
		    FUNC0(sgimc->dtlb_hi2, sgimc->dtlb_lo2, a) ||
		    FUNC0(sgimc->dtlb_hi3, sgimc->dtlb_lo3, a))
			return 1;
	}
	return 0;
}