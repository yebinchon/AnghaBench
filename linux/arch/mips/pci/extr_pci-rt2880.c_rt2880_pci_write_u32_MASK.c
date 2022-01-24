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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  RT2880_PCI_REG_CONFIG_ADDR ; 
 int /*<<< orphan*/  RT2880_PCI_REG_CONFIG_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  rt2880_pci_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(unsigned long reg, u32 val)
{
	unsigned long flags;
	u32 address;

	address = FUNC0(0, 0, 0, reg);

	FUNC2(&rt2880_pci_lock, flags);
	FUNC1(address, RT2880_PCI_REG_CONFIG_ADDR);
	FUNC1(val, RT2880_PCI_REG_CONFIG_DATA);
	FUNC3(&rt2880_pci_lock, flags);
}