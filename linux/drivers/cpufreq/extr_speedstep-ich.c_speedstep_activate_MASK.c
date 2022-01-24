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
typedef  int u16 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  speedstep_chipset_dev ; 

__attribute__((used)) static int FUNC3(void)
{
	u16 value = 0;

	if (!speedstep_chipset_dev)
		return -EINVAL;

	FUNC0(speedstep_chipset_dev, 0x00A0, &value);
	if (!(value & 0x08)) {
		value |= 0x08;
		FUNC2("activating SpeedStep (TM) registers\n");
		FUNC1(speedstep_chipset_dev, 0x00A0, value);
	}

	return 0;
}