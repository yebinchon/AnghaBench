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

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_P9_TLBIE_ERAT_BUG ; 
 int /*<<< orphan*/  CPU_FTR_P9_TLBIE_STQ_BUG ; 
 int /*<<< orphan*/  RIC_FLUSH_TLB ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(unsigned long va, unsigned long lpid,
				       unsigned long ap)
{
	if (FUNC1(CPU_FTR_P9_TLBIE_ERAT_BUG)) {
		asm volatile("ptesync": : :"memory");
		FUNC0(va, 0, ap, RIC_FLUSH_TLB);
	}

	if (FUNC1(CPU_FTR_P9_TLBIE_STQ_BUG)) {
		asm volatile("ptesync": : :"memory");
		FUNC0(va, lpid, ap, RIC_FLUSH_TLB);
	}
}