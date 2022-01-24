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
struct pg_state {int current_flags; unsigned long start_address; unsigned long wx_pages; int /*<<< orphan*/  check_wx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PPC_DEBUG_WX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_KERNEL_X ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,void*,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pg_state *st, unsigned long addr)
{
	if (!FUNC0(CONFIG_PPC_DEBUG_WX) || !st->check_wx)
		return;

	if (!((st->current_flags & FUNC2(PAGE_KERNEL_X)) == FUNC2(PAGE_KERNEL_X)))
		return;

	FUNC1(1, "powerpc/mm: Found insecure W+X mapping at address %p/%pS\n",
		  (void *)st->start_address, (void *)st->start_address);

	st->wx_pages += (addr - st->start_address) / PAGE_SIZE;
}