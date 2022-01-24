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
 unsigned short CR_CAP_DATA ; 
 unsigned short CR_WRITE_ENABLE ; 
 int /*<<< orphan*/  SATA_PHY_ASIC_DATA ; 
 int /*<<< orphan*/  SATA_PHY_ASIC_STAT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned short data, unsigned short address)
{
	FUNC1(address, SATA_PHY_ASIC_STAT);
	FUNC0();
	FUNC1((data | CR_CAP_DATA), SATA_PHY_ASIC_DATA);
	FUNC0();
	FUNC1(CR_WRITE_ENABLE, SATA_PHY_ASIC_DATA);
	FUNC0();
	return;
}