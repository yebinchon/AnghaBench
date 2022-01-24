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
struct mid_pwr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SET_CFG ; 
 int EAGAIN ; 
 int FUNC0 (struct mid_pwr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mid_pwr*,int,int) ; 
 int FUNC2 (struct mid_pwr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mid_pwr *pwr, int reg, int bit, int new)
{
	int curstate;
	u32 power;
	int ret;

	/* Check if the device is already in desired state */
	power = FUNC0(pwr, reg);
	curstate = (power >> bit) & 3;
	if (curstate == new)
		return 0;

	/* Update the power state */
	FUNC1(pwr, reg, (power & ~(3 << bit)) | (new << bit));

	/* Send command to SCU */
	ret = FUNC2(pwr, CMD_SET_CFG);
	if (ret)
		return ret;

	/* Check if the device is already in desired state */
	power = FUNC0(pwr, reg);
	curstate = (power >> bit) & 3;
	if (curstate != new)
		return -EAGAIN;

	return 0;
}