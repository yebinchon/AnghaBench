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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ HPET_CFG ; 
 scalar_t__ HPET_COUNTER ; 
 scalar_t__ HPET_ID ; 
 int HPET_ID_NUMBER ; 
 int HPET_ID_NUMBER_SHIFT ; 
 scalar_t__ HPET_PERIOD ; 
 scalar_t__ HPET_STATUS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(const char *function, int line)
{
	u32 i, id, period, cfg, status, channels, l, h;

	FUNC4("%s(%d):\n", function, line);

	id = FUNC3(HPET_ID);
	period = FUNC3(HPET_PERIOD);
	FUNC4("ID: 0x%x, PERIOD: 0x%x\n", id, period);

	cfg = FUNC3(HPET_CFG);
	status = FUNC3(HPET_STATUS);
	FUNC4("CFG: 0x%x, STATUS: 0x%x\n", cfg, status);

	l = FUNC3(HPET_COUNTER);
	h = FUNC3(HPET_COUNTER+4);
	FUNC4("COUNTER_l: 0x%x, COUNTER_h: 0x%x\n", l, h);

	channels = ((id & HPET_ID_NUMBER) >> HPET_ID_NUMBER_SHIFT) + 1;

	for (i = 0; i < channels; i++) {
		l = FUNC3(FUNC0(i));
		h = FUNC3(FUNC0(i)+4);
		FUNC4("T%d: CFG_l: 0x%x, CFG_h: 0x%x\n", i, l, h);

		l = FUNC3(FUNC1(i));
		h = FUNC3(FUNC1(i)+4);
		FUNC4("T%d: CMP_l: 0x%x, CMP_h: 0x%x\n", i, l, h);

		l = FUNC3(FUNC2(i));
		h = FUNC3(FUNC2(i)+4);
		FUNC4("T%d ROUTE_l: 0x%x, ROUTE_h: 0x%x\n", i, l, h);
	}
}