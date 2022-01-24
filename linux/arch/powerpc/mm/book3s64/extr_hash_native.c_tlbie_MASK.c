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
struct TYPE_2__ {unsigned int tlbiel; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_FTR_LOCKLESS_TLBIE ; 
 int /*<<< orphan*/  MMU_FTR_TLBIEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* mmu_psize_defs ; 
 int /*<<< orphan*/  native_tlbie_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(unsigned long vpn, int psize, int apsize,
			 int ssize, int local)
{
	unsigned int use_local;
	int lock_tlbie = !FUNC4(MMU_FTR_LOCKLESS_TLBIE);

	use_local = local && FUNC4(MMU_FTR_TLBIEL) && !FUNC2();

	if (use_local)
		use_local = mmu_psize_defs[psize].tlbiel;
	if (lock_tlbie && !use_local)
		FUNC5(&native_tlbie_lock);
	asm volatile("ptesync": : :"memory");
	if (use_local) {
		FUNC1(vpn, psize, apsize, ssize);
		asm volatile("ptesync": : :"memory");
	} else {
		FUNC0(vpn, psize, apsize, ssize);
		FUNC3(vpn, psize, apsize, ssize);
		asm volatile("eieio; tlbsync; ptesync": : :"memory");
	}
	if (lock_tlbie && !use_local)
		FUNC6(&native_tlbie_lock);
}