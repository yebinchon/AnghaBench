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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSKYCPU_DEF_NAME ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *arg)
{
	struct seq_file *m = (struct seq_file *)arg;
	unsigned int cur, next, i;

	FUNC3(m, "processor       : %d\n", FUNC4());
	FUNC3(m, "C-SKY CPU model : %s\n", CSKYCPU_DEF_NAME);

	/* read processor id, max is 100 */
	cur  = FUNC0("cr13");
	for (i = 0; i < 100; i++) {
		FUNC3(m, "product info[%d] : 0x%08x\n", i, cur);

		next = FUNC0("cr13");

		/* some CPU only has one id reg */
		if (cur == next)
			break;

		cur = next;

		/* cpid index is 31-28, reset */
		if (!(next >> 28)) {
			while ((FUNC0("cr13") >> 28) != i);
			break;
		}
	}

	/* CPU feature regs, setup by bootloader or gdbinit */
	FUNC3(m, "hint (CPU funcs): 0x%08x\n", FUNC2());
	FUNC3(m, "ccr  (L1C & MMU): 0x%08x\n", FUNC0("cr18"));
	FUNC3(m, "ccr2 (L2C)      : 0x%08x\n", FUNC1());
	FUNC3(m, "\n");
}