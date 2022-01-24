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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int RTL8366S_LED_GROUP_MAX ; 
 int /*<<< orphan*/  RTL8366S_LED_INDICATED_CONF_REG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*) ; 

int FUNC3(uint32_t ledNum, uint8_t *config)
{
    uint16_t regData;

	if(ledNum >= RTL8366S_LED_GROUP_MAX) {
		FUNC0("rtl8366s_getLedConfig: invalid led group\n");
		return -1;
	}

    if (FUNC2(RTL8366S_LED_INDICATED_CONF_REG, &regData)) {
        FUNC1("rtl8366s_getLedConfig: failed to get led register!\n");
        return -1;
	}

	if (config)
        *config = (regData >> (ledNum * 4)) & 0xF;

    return 0;
}