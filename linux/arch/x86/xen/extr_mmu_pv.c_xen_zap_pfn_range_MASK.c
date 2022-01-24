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
struct multicall_space {int /*<<< orphan*/  mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_P2M_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  VOID_PTE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 struct multicall_space FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(unsigned long vaddr, unsigned int order,
				unsigned long *in_frames,
				unsigned long *out_frames)
{
	int i;
	struct multicall_space mcs;

	FUNC5();
	for (i = 0; i < (1UL<<order); i++, vaddr += PAGE_SIZE) {
		mcs = FUNC2(0);

		if (in_frames)
			in_frames[i] = FUNC3(vaddr);

		FUNC0(mcs.mc, vaddr, VOID_PTE, 0);
		FUNC1(FUNC4(vaddr), INVALID_P2M_ENTRY);

		if (out_frames)
			out_frames[i] = FUNC4(vaddr);
	}
	FUNC6(0);
}