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
struct pt_regs {int msr; int trap; int /*<<< orphan*/  nip; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int MSR_64BIT ; 
 int MSR_IR ; 
 int MSR_PR ; 
 int MSR_SE ; 
 int FUNC1 (struct pt_regs*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC7(struct pt_regs *regs)
{
	unsigned int instr;
	int stepped;

	FUNC2();
	/* check we are in 64-bit kernel mode, translation enabled */
	if ((regs->msr & (MSR_64BIT|MSR_PR|MSR_IR)) == (MSR_64BIT|MSR_IR)) {
		if (FUNC3(regs->nip, &instr, 4) == 4) {
			stepped = FUNC1(regs, instr);
			if (stepped < 0) {
				FUNC5("Couldn't single-step %s instruction\n",
				       (FUNC0(instr)? "rfid": "mtmsrd"));
				return 0;
			}
			if (stepped > 0) {
				regs->trap = 0xd00 | (regs->trap & 1);
				FUNC5("stepped to ");
				FUNC6(regs->nip, " ", "\n");
				FUNC4(regs->nip, 1, 0);
				return 0;
			}
		}
	}
	regs->msr |= MSR_SE;
	return 1;
}