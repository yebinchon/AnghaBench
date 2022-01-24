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
typedef  int u64 ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 int HPTE_R_R ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int,int,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,unsigned long*,int,int,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,int) ; 

void FUNC6(struct kvm *kvm, __be64 *hptep,
			   unsigned long pte_index)
{
	unsigned long rb;
	unsigned char rbyte;
	u64 hp0, hp1;

	hp0 = FUNC0(hptep[0]);
	hp1 = FUNC0(hptep[1]);
	if (FUNC2(CPU_FTR_ARCH_300)) {
		hp0 = FUNC5(hp0, hp1);
		hp1 = FUNC4(hp1);
	}
	rb = FUNC1(hp0, hp1, pte_index);
	rbyte = (FUNC0(hptep[1]) & ~HPTE_R_R) >> 8;
	/* modify only the second-last byte, which contains the ref bit */
	*((char *)hptep + 14) = rbyte;
	FUNC3(kvm, &rb, 1, 1, false);
}