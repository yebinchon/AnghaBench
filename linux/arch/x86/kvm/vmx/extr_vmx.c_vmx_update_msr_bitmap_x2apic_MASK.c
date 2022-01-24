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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_EOI ; 
 int /*<<< orphan*/  APIC_SELF_IPI ; 
 int /*<<< orphan*/  APIC_TASKPRI ; 
 int /*<<< orphan*/  APIC_TMCCT ; 
 int BITS_PER_LONG ; 
 int MSR_BITMAP_MODE_X2APIC ; 
 int MSR_BITMAP_MODE_X2APIC_APICV ; 
 int /*<<< orphan*/  MSR_TYPE_R ; 
 int /*<<< orphan*/  MSR_TYPE_RW ; 
 int /*<<< orphan*/  MSR_TYPE_W ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned long *msr_bitmap,
					 u8 mode)
{
	int msr;

	for (msr = 0x800; msr <= 0x8ff; msr += BITS_PER_LONG) {
		unsigned word = msr / BITS_PER_LONG;
		msr_bitmap[word] = (mode & MSR_BITMAP_MODE_X2APIC_APICV) ? 0 : ~0;
		msr_bitmap[word + (0x800 / sizeof(long))] = ~0;
	}

	if (mode & MSR_BITMAP_MODE_X2APIC) {
		/*
		 * TPR reads and writes can be virtualized even if virtual interrupt
		 * delivery is not in use.
		 */
		FUNC1(msr_bitmap, FUNC0(APIC_TASKPRI), MSR_TYPE_RW);
		if (mode & MSR_BITMAP_MODE_X2APIC_APICV) {
			FUNC2(msr_bitmap, FUNC0(APIC_TMCCT), MSR_TYPE_R);
			FUNC1(msr_bitmap, FUNC0(APIC_EOI), MSR_TYPE_W);
			FUNC1(msr_bitmap, FUNC0(APIC_SELF_IPI), MSR_TYPE_W);
		}
	}
}