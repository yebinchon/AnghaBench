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
struct rt3883_pci_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT3883_PCI_REG_CFGADDR ; 
 int /*<<< orphan*/  RT3883_PCI_REG_CFGDATA ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt3883_pci_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt3883_pci_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct rt3883_pci_controller *rpc,
			       unsigned bus, unsigned slot,
			       unsigned func, unsigned reg)
{
	unsigned long flags;
	u32 address;
	u32 ret;

	address = FUNC0(bus, slot, func, reg);

	FUNC2(rpc, address, RT3883_PCI_REG_CFGADDR);
	ret = FUNC1(rpc, RT3883_PCI_REG_CFGDATA);

	return ret;
}