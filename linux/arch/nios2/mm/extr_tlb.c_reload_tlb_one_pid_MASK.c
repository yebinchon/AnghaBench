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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned long addr, unsigned long mmu_pid, pte_t pte)
{
	FUNC0("Reload tlb-entry for vaddr=%#lx\n", addr);

	FUNC2(addr, mmu_pid, FUNC1(pte));
}