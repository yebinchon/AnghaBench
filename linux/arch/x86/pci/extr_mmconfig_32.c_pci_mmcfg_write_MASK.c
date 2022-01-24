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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  mmcfg_virt_addr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_config_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(unsigned int seg, unsigned int bus,
			   unsigned int devfn, int reg, int len, u32 value)
{
	unsigned long flags;
	u32 base;

	if ((bus > 255) || (devfn > 255) || (reg > 4095))
		return -EINVAL;

	FUNC7();
	base = FUNC0(seg, bus, devfn);
	if (!base) {
		FUNC8();
		return -EINVAL;
	}

	FUNC5(&pci_config_lock, flags);

	FUNC4(base, bus, devfn);

	switch (len) {
	case 1:
		FUNC1(mmcfg_virt_addr + reg, value);
		break;
	case 2:
		FUNC3(mmcfg_virt_addr + reg, value);
		break;
	case 4:
		FUNC2(mmcfg_virt_addr + reg, value);
		break;
	}
	FUNC6(&pci_config_lock, flags);
	FUNC8();

	return 0;
}