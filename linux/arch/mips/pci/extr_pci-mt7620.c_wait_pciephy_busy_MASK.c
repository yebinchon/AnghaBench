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

/* Variables and functions */
 unsigned long BUSY ; 
 int /*<<< orphan*/  PCIEPHY0_CFG ; 
 int /*<<< orphan*/  WAITRETRY_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(void)
{
	unsigned long reg_value = 0x0, retry = 0;

	while (1) {
		reg_value = FUNC1(PCIEPHY0_CFG);

		if (reg_value & BUSY)
			FUNC0(100);
		else
			break;
		if (retry++ > WAITRETRY_MAX) {
			FUNC2("PCIE-PHY retry failed.\n");
			return -1;
		}
	}
	return 0;
}