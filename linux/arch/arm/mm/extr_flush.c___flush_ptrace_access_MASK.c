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
struct page {int dummy; } ;

/* Variables and functions */
 unsigned int FLAG_PA_CORE_IN_MM ; 
 unsigned int FLAG_PA_IS_EXEC ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  flush_ptrace_access_other ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline
void FUNC10(struct page *page, unsigned long uaddr, void *kaddr,
			   unsigned long len, unsigned int flags)
{
	if (FUNC3()) {
		if (flags & FLAG_PA_CORE_IN_MM) {
			unsigned long addr = (unsigned long)kaddr;
			FUNC0(addr, addr + len);
		}
		return;
	}

	if (FUNC2()) {
		FUNC6(FUNC8(page), uaddr);
		FUNC1();
		return;
	}

	/* VIPT non-aliasing D-cache */
	if (flags & FLAG_PA_IS_EXEC) {
		unsigned long addr = (unsigned long)kaddr;
		if (FUNC7())
			FUNC5(FUNC8(page), uaddr, len);
		else
			FUNC0(addr, addr + len);
		if (FUNC4())
			FUNC9(flush_ptrace_access_other,
					  NULL, 1);
	}
}