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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBCR ; 
 unsigned int SCBR_I2CCEN ; 
 unsigned int SCBR_I2CMEN ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdk7786_i2c_devices ; 

__attribute__((used)) static int FUNC4(void)
{
	unsigned int tmp;

	/*
	 * Hand over I2C control to the FPGA.
	 */
	tmp = FUNC1(SBCR);
	tmp &= ~SCBR_I2CCEN;
	tmp |= SCBR_I2CMEN;
	FUNC2(tmp, SBCR);

	return FUNC3(0, sdk7786_i2c_devices,
				       FUNC0(sdk7786_i2c_devices));
}