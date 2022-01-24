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
 unsigned short CR_READ_ENABLE ; 
 int /*<<< orphan*/  SATA_PHY_ASIC_DATA ; 
 int /*<<< orphan*/  SATA_PHY_ASIC_STAT ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned short FUNC3(unsigned short address)
{
	FUNC2(address, SATA_PHY_ASIC_STAT);
	FUNC1();
	FUNC2(CR_READ_ENABLE, SATA_PHY_ASIC_DATA);
	FUNC1();
	return FUNC0(SATA_PHY_ASIC_STAT);
}