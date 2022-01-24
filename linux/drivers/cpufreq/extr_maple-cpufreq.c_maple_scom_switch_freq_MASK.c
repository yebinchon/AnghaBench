#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long frequency; } ;

/* Variables and functions */
 unsigned long PCR_HILO_SELECT ; 
 unsigned long PCR_SPEED_SHIFT ; 
 unsigned long PSR_CMD_COMPLETED ; 
 unsigned long PSR_CMD_RECEIVED ; 
 unsigned long PSR_CUR_SPEED_SHIFT ; 
 int /*<<< orphan*/  SCOM_PCR ; 
 int /*<<< orphan*/  SCOM_PSR ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_1__* maple_cpu_freqs ; 
 int maple_pmode_cur ; 
 unsigned long* maple_pmode_data ; 
 unsigned long ppc_proc_freq ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(int speed_mode)
{
	unsigned long flags;
	int to;

	FUNC1(flags);

	/* Clear PCR high */
	FUNC3(SCOM_PCR, 0);
	/* Clear PCR low */
	FUNC3(SCOM_PCR, PCR_HILO_SELECT | 0);
	/* Set PCR low */
	FUNC3(SCOM_PCR, PCR_HILO_SELECT |
		      maple_pmode_data[speed_mode]);

	/* Wait for completion */
	for (to = 0; to < 10; to++) {
		unsigned long psr = FUNC2(SCOM_PSR);

		if ((psr & PSR_CMD_RECEIVED) == 0 &&
		    (((psr >> PSR_CUR_SPEED_SHIFT) ^
		      (maple_pmode_data[speed_mode] >> PCR_SPEED_SHIFT)) & 0x3)
		    == 0)
			break;
		if (psr & PSR_CMD_COMPLETED)
			break;
		FUNC4(100);
	}

	FUNC0(flags);

	maple_pmode_cur = speed_mode;
	ppc_proc_freq = maple_cpu_freqs[speed_mode].frequency * 1000ul;

	return 0;
}