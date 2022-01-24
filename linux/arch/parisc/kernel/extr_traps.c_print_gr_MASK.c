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
struct pt_regs {int /*<<< orphan*/ * gr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RFMT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 

__attribute__((used)) static void FUNC4(char *level, struct pt_regs *regs)
{
	int i;
	char buf[64];

	FUNC3("%s\n", level);
	FUNC3("%s     YZrvWESTHLNXBCVMcbcbcbcbOGFRQPDI\n", level);
	FUNC2(buf, regs->gr[0], 32);
	FUNC3("%sPSW: %s %s\n", level, buf, FUNC1());

	for (i = 0; i < 32; i += 4)
		FUNC0(level, regs->gr, "r", RFMT, i);
}