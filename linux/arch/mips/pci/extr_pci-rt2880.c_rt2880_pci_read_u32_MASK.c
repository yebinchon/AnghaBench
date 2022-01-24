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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline u32 FUNC5(unsigned long reg)
{
	unsigned long flags;
	u32 address;
	u32 ret;

	address = FUNC0(0, 0, 0, reg);

	FUNC3(&rt2880_pci_lock, flags);
	FUNC2(address, RT2880_PCI_REG_CONFIG_ADDR);
	ret = FUNC1(RT2880_PCI_REG_CONFIG_DATA);
	FUNC4(&rt2880_pci_lock, flags);

	return ret;
}