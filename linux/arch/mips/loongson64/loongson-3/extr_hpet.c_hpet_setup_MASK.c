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
 int /*<<< orphan*/  HPET_ADDR ; 
 int /*<<< orphan*/  SMBUS_PCI_REG40 ; 
 int /*<<< orphan*/  SMBUS_PCI_REG64 ; 
 int /*<<< orphan*/  SMBUS_PCI_REGB4 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	/* set hpet base address */
	FUNC2(SMBUS_PCI_REGB4, HPET_ADDR);

	/* enable decoding of access to HPET MMIO*/
	FUNC1(SMBUS_PCI_REG40, (1 << 28));

	/* HPET irq enable */
	FUNC1(SMBUS_PCI_REG64, (1 << 10));

	FUNC0();
}