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
typedef  int /*<<< orphan*/  u32 ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,unsigned int*) ; 
 unsigned long FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 scalar_t__ FUNC4 (struct pt_regs*) ; 

__attribute__((used)) static void FUNC5(const char *lvl, struct pt_regs *regs)
{
	unsigned long addr = FUNC1(regs);
	char str[sizeof("00000000 ") * 5 + 2 + 1], *p = str;
	int i;

	if (FUNC4(regs))
		return;

	for (i = -4; i < 1; i++) {
		unsigned int val, bad;

		bad = FUNC0(&((u32 *)addr)[i], &val);

		if (!bad)
			p += FUNC3(p, i == 0 ? "(%08x) " : "%08x ", val);
		else {
			p += FUNC3(p, "bad PC value");
			break;
		}
	}

	FUNC2("%sCode: %s\n", lvl, str);
}