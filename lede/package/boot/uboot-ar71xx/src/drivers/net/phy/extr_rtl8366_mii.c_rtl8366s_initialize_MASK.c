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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  RTL8366S_CHIP_ID_REG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(void)
{
	uint16_t regData;

    FUNC0("rtl8366s_initialize: start setup\n");

    FUNC6();

	FUNC2(RTL8366S_CHIP_ID_REG, &regData);
	FUNC0("Realtek 8366SR switch ID %#04x\n", regData);

	if (regData != 0x8366) {
		FUNC1("rtl8366s_initialize: found unsupported switch\n");
		return -1;
	}

    if (FUNC3()) {
        FUNC1("rtl8366s_initialize: init chip failed\n");
        return -1;
    }

	if (FUNC5(1, 1)) {
       FUNC1("rtl8366s_initialize: set green ethernet failed\n");
       return -1;
   }

   	/* Set port 5 noTag and don't dropUnda */
	if (FUNC4(5, 1, 0)) {
		FUNC1("rtl8366s_initialize: set CPU port failed\n");
		return -1;
	}

    return 0;
}