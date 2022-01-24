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
typedef  int /*<<< orphan*/  u16 ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int FUNC4 (struct pt_regs*) ; 

__attribute__((used)) static void FUNC5(const char *lvl, struct pt_regs *regs)
{
	unsigned long addr = FUNC1(regs);
	const int thumb = FUNC4(regs);
	const int width = thumb ? 4 : 8;
	char str[sizeof("00000000 ") * 5 + 2 + 1], *p = str;
	int i;

	/*
	 * Note that we now dump the code first, just in case the backtrace
	 * kills us.
	 */

	for (i = -4; i < 1 + !!thumb; i++) {
		unsigned int val, bad;

		if (thumb)
			bad = FUNC0(val, &((u16 *)addr)[i]);
		else
			bad = FUNC0(val, &((u32 *)addr)[i]);

		if (!bad)
			p += FUNC3(p, i == 0 ? "(%0*x) " : "%0*x ",
					width, val);
		else {
			p += FUNC3(p, "bad PC value");
			break;
		}
	}
	FUNC2("%sCode: %s\n", lvl, str);
}