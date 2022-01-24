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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(int susp)
{
	switch (FUNC0()) {
	case ALCHEMY_CPU_AU1000:
	case ALCHEMY_CPU_AU1500:
	case ALCHEMY_CPU_AU1100:
		FUNC1(AU1000_USB_OHCI_PHYS_ADDR, AU1000_OHCICFG, susp);
		break;
	case ALCHEMY_CPU_AU1550:
		FUNC1(AU1550_USB_OHCI_PHYS_ADDR, AU1550_OHCICFG, susp);
		break;
	case ALCHEMY_CPU_AU1200:
		FUNC2(susp);
		break;
	case ALCHEMY_CPU_AU1300:
		FUNC3(susp);
		break;
	}
}