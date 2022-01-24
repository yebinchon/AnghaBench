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
#define  ALCHEMY_CPU_AU1000 133 
#define  ALCHEMY_CPU_AU1100 132 
#define  ALCHEMY_CPU_AU1200 131 
#define  ALCHEMY_CPU_AU1300 130 
#define  ALCHEMY_CPU_AU1500 129 
#define  ALCHEMY_CPU_AU1550 128 
 int /*<<< orphan*/  AU1000_OHCICFG ; 
 int /*<<< orphan*/  AU1000_USB_OHCI_PHYS_ADDR ; 
 int /*<<< orphan*/  AU1550_OHCICFG ; 
 int /*<<< orphan*/  AU1550_USB_OHCI_PHYS_ADDR ; 
 int ENODEV ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  alchemy_usb_lock ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(int block, int enable)
{
	unsigned long flags;
	int ret;

	FUNC4(&alchemy_usb_lock, flags);
	switch (FUNC0()) {
	case ALCHEMY_CPU_AU1000:
	case ALCHEMY_CPU_AU1500:
	case ALCHEMY_CPU_AU1100:
		ret = FUNC1(block, enable,
			AU1000_USB_OHCI_PHYS_ADDR, AU1000_OHCICFG);
		break;
	case ALCHEMY_CPU_AU1550:
		ret = FUNC1(block, enable,
			AU1550_USB_OHCI_PHYS_ADDR, AU1550_OHCICFG);
		break;
	case ALCHEMY_CPU_AU1200:
		ret = FUNC2(block, enable);
		break;
	case ALCHEMY_CPU_AU1300:
		ret = FUNC3(block, enable);
		break;
	default:
		ret = -ENODEV;
	}
	FUNC5(&alchemy_usb_lock, flags);
	return ret;
}