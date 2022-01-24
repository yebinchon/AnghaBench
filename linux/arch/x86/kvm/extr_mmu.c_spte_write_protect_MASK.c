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

/* Variables and functions */
 int PT_WRITABLE_MASK ; 
 int SPTE_MMU_WRITEABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static bool FUNC4(u64 *sptep, bool pt_protect)
{
	u64 spte = *sptep;

	if (!FUNC0(spte) &&
	      !(pt_protect && FUNC3(spte)))
		return false;

	FUNC2("rmap_write_protect: spte %p %llx\n", sptep, *sptep);

	if (pt_protect)
		spte &= ~SPTE_MMU_WRITEABLE;
	spte = spte & ~PT_WRITABLE_MASK;

	return FUNC1(sptep, spte);
}