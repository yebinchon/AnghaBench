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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(uint32_t reg, uint16_t *data)
{
    uint32_t regData;

    FUNC0("rtl8366: read register=%#04x, data=", reg);

    if (FUNC2(reg, &regData)) {
        FUNC1("\nrtl8366 smi read failed!\n");
        return -1;
    }

    if (data)
        *data = regData;

    FUNC0("%#04x\n", regData);

    return 0;
}