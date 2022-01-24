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
 int /*<<< orphan*/  NBG460N_WAN_LED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(void)
{
	// Set pin 19 to 1, to stop WAN LED blinking
    FUNC1(NBG460N_WAN_LED, 1);
    FUNC0(NBG460N_WAN_LED, 1);

    FUNC2("U-boot on Zyxel NBG460N\n");
    return 0;
}