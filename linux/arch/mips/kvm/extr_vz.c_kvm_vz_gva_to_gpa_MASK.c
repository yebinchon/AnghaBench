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
typedef  int u32 ;
struct kvm_vcpu {int dummy; } ;
typedef  long s32 ;

/* Variables and functions */
 scalar_t__ cpu_guest_has_segments ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*,unsigned long,unsigned long) ; 
 int FUNC1 (struct kvm_vcpu*,unsigned long,unsigned long*) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu, unsigned long gva,
			     unsigned long *gpa)
{
	u32 gva32 = gva;
	unsigned long segctl;

	if ((long)gva == (s32)gva32) {
		/* Handle canonical 32-bit virtual address */
		if (cpu_guest_has_segments) {
			unsigned long mask, pa;

			switch (gva32 >> 29) {
			case 0:
			case 1: /* CFG5 (1GB) */
				segctl = FUNC4() >> 16;
				mask = (unsigned long)0xfc0000000ull;
				break;
			case 2:
			case 3: /* CFG4 (1GB) */
				segctl = FUNC4();
				mask = (unsigned long)0xfc0000000ull;
				break;
			case 4: /* CFG3 (512MB) */
				segctl = FUNC3() >> 16;
				mask = (unsigned long)0xfe0000000ull;
				break;
			case 5: /* CFG2 (512MB) */
				segctl = FUNC3();
				mask = (unsigned long)0xfe0000000ull;
				break;
			case 6: /* CFG1 (512MB) */
				segctl = FUNC2() >> 16;
				mask = (unsigned long)0xfe0000000ull;
				break;
			case 7: /* CFG0 (512MB) */
				segctl = FUNC2();
				mask = (unsigned long)0xfe0000000ull;
				break;
			default:
				/*
				 * GCC 4.9 isn't smart enough to figure out that
				 * segctl and mask are always initialised.
				 */
				FUNC5();
			}

			if (FUNC0(vcpu, (segctl >> 4) & 0x7,
					     segctl & 0x0008))
				goto tlb_mapped;

			/* Unmapped, find guest physical address */
			pa = (segctl << 20) & mask;
			pa |= gva32 & ~mask;
			*gpa = pa;
			return 0;
		} else if ((s32)gva32 < (s32)0xc0000000) {
			/* legacy unmapped KSeg0 or KSeg1 */
			*gpa = gva32 & 0x1fffffff;
			return 0;
		}
#ifdef CONFIG_64BIT
	} else if ((gva & 0xc000000000000000) == 0x8000000000000000) {
		/* XKPHYS */
		if (cpu_guest_has_segments) {
			/*
			 * Each of the 8 regions can be overridden by SegCtl2.XR
			 * to use SegCtl1.XAM.
			 */
			segctl = read_gc0_segctl2();
			if (segctl & (1ull << (56 + ((gva >> 59) & 0x7)))) {
				segctl = read_gc0_segctl1();
				if (is_eva_am_mapped(vcpu, (segctl >> 59) & 0x7,
						     0))
					goto tlb_mapped;
			}

		}
		/*
		 * Traditionally fully unmapped.
		 * Bits 61:59 specify the CCA, which we can just mask off here.
		 * Bits 58:PABITS should be zero, but we shouldn't have got here
		 * if it wasn't.
		 */
		*gpa = gva & 0x07ffffffffffffff;
		return 0;
#endif
	}

tlb_mapped:
	return FUNC1(vcpu, gva, gpa);
}