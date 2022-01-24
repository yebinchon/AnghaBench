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
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int pmbase ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  speedstep_chipset_dev ; 

__attribute__((used)) static int FUNC3(void)
{
	if (!speedstep_chipset_dev)
		return -ENODEV;

	/* get PMBASE */
	FUNC0(speedstep_chipset_dev, 0x40, &pmbase);
	if (!(pmbase & 0x01)) {
		FUNC2("could not find speedstep register\n");
		return -ENODEV;
	}

	pmbase &= 0xFFFFFFFE;
	if (!pmbase) {
		FUNC2("could not find speedstep register\n");
		return -ENODEV;
	}

	FUNC1("pmbase is 0x%x\n", pmbase);
	return 0;
}