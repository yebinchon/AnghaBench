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
typedef  int /*<<< orphan*/  suspend_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  AU1000_SYS_CNTRCTRL ; 
 int /*<<< orphan*/  AU1000_SYS_TOYMATCH2 ; 
 int /*<<< orphan*/  AU1000_SYS_TOYREAD ; 
 int /*<<< orphan*/  AU1000_SYS_WAKEMSK ; 
 int /*<<< orphan*/  AU1000_SYS_WAKESRC ; 
 int BCSR_HEXCLEAR ; 
 int BCSR_INTCLR ; 
 size_t BCSR_INTSET ; 
 int BCSR_INTSTAT ; 
 int BCSR_MASKCLR ; 
 int BCSR_MASKSET ; 
 int BCSR_STATUS ; 
 int BCSR_SYSTEM ; 
 int BCSR_WHOAMI ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ BCSR_WHOAMI_DB1200 ; 
 int SYS_CNTRL_M20 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned short) ; 
 scalar_t__ db1x_pm_sleep_secs ; 
 scalar_t__ db1x_pm_wakemsk ; 

__attribute__((used)) static int FUNC7(suspend_state_t state)
{
	unsigned short bcsrs[16];
	int i, j, hasint;

	/* save CPLD regs */
	hasint = FUNC5(BCSR_WHOAMI);
	hasint = FUNC0(hasint) >= BCSR_WHOAMI_DB1200;
	j = (hasint) ? BCSR_MASKSET : BCSR_SYSTEM;

	for (i = BCSR_STATUS; i <= j; i++)
		bcsrs[i] = FUNC5(i);

	/* shut off hexleds */
	FUNC6(BCSR_HEXCLEAR, 3);

	/* enable GPIO based wakeup */
	FUNC1();

	/* clear and setup wake cause and source */
	FUNC3(0, AU1000_SYS_WAKEMSK);
	FUNC3(0, AU1000_SYS_WAKESRC);

	FUNC3(db1x_pm_wakemsk, AU1000_SYS_WAKEMSK);

	/* setup 1Hz-timer-based wakeup: wait for reg access */
	while (FUNC2(AU1000_SYS_CNTRCTRL) & SYS_CNTRL_M20)
		asm volatile ("nop");

	FUNC3(FUNC2(AU1000_SYS_TOYREAD) + db1x_pm_sleep_secs,
		      AU1000_SYS_TOYMATCH2);

	/* wait for value to really hit the register */
	while (FUNC2(AU1000_SYS_CNTRCTRL) & SYS_CNTRL_M20)
		asm volatile ("nop");

	/* ...and now the sandman can come! */
	FUNC4();


	/* restore CPLD regs */
	for (i = BCSR_STATUS; i <= BCSR_SYSTEM; i++)
		FUNC6(i, bcsrs[i]);

	/* restore CPLD int registers */
	if (hasint) {
		FUNC6(BCSR_INTCLR, 0xffff);
		FUNC6(BCSR_MASKCLR, 0xffff);
		FUNC6(BCSR_INTSTAT, 0xffff);
		FUNC6(BCSR_INTSET, bcsrs[BCSR_INTSET]);
		FUNC6(BCSR_MASKSET, bcsrs[BCSR_MASKSET]);
	}

	/* light up hexleds */
	FUNC6(BCSR_HEXCLEAR, 0);

	return 0;
}