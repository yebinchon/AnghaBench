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
struct host_vm_change {scalar_t__ force; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int FUNC0 (unsigned long,unsigned long,struct host_vm_change*) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned long,unsigned long,struct host_vm_change*) ; 

__attribute__((used)) static inline int FUNC7(pud_t *pud, unsigned long addr,
				   unsigned long end,
				   struct host_vm_change *hvc)
{
	pmd_t *pmd;
	unsigned long next;
	int ret = 0;

	pmd = FUNC4(pud, addr);
	do {
		next = FUNC1(addr, end);
		if (!FUNC5(*pmd)) {
			if (hvc->force || FUNC3(*pmd)) {
				ret = FUNC0(addr, next - addr, hvc);
				FUNC2(*pmd);
			}
		}
		else ret = FUNC6(pmd, addr, next, hvc);
	} while (pmd++, addr = next, ((addr < end) && !ret));
	return ret;
}