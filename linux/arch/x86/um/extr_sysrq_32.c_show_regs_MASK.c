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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 int FUNC3 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 
 int FUNC6 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC7 (struct pt_regs*) ; 
 int FUNC8 (struct pt_regs*) ; 
 int FUNC9 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC10 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC11 (struct pt_regs*) ; 
 int FUNC12 (struct pt_regs*) ; 
 int FUNC13 (struct pt_regs*) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 () ; 

void FUNC17(struct pt_regs *regs)
{
        FUNC15("\n");
        FUNC15("EIP: %04lx:[<%08lx>] CPU: %d %s", 
	       0xffff & FUNC3(regs), FUNC10(regs),
	       FUNC16(), FUNC14());
        if (FUNC3(regs) & 3)
                FUNC15(" ESP: %04lx:%08lx", 0xffff & FUNC13(regs),
		       FUNC12(regs));
        FUNC15(" EFLAGS: %08lx\n    %s\n", FUNC8(regs),
	       FUNC14());
        FUNC15("EAX: %08lx EBX: %08lx ECX: %08lx EDX: %08lx\n",
               FUNC0(regs), FUNC2(regs), 
	       FUNC4(regs), FUNC7(regs));
        FUNC15("ESI: %08lx EDI: %08lx EBP: %08lx",
	       FUNC11(regs), FUNC5(regs), FUNC1(regs));
        FUNC15(" DS: %04lx ES: %04lx\n",
	       0xffff & FUNC6(regs), 
	       0xffff & FUNC9(regs));
}