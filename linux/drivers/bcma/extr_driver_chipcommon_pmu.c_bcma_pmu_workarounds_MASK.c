#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bcma_drv_cc {TYPE_1__* core; } ;
struct TYPE_4__ {int id; int /*<<< orphan*/  rev; } ;
struct bcma_bus {TYPE_2__ chipinfo; } ;
struct TYPE_3__ {struct bcma_bus* bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CCTRL_4313_12MA_LED_DRIVE ; 
 int /*<<< orphan*/  BCMA_CCTRL_43224A0_12MA_LED_DRIVE ; 
 int /*<<< orphan*/  BCMA_CCTRL_43224B0_12MA_LED_DRIVE ; 
 int /*<<< orphan*/  BCMA_CCTRL_43224_GPIO_TOGGLE ; 
 int /*<<< orphan*/  BCMA_CC_CHIPCTL ; 
#define  BCMA_CHIP_ID_BCM4313 132 
#define  BCMA_CHIP_ID_BCM43224 131 
#define  BCMA_CHIP_ID_BCM4331 130 
#define  BCMA_CHIP_ID_BCM43421 129 
#define  BCMA_CHIP_ID_BCM43431 128 
 int /*<<< orphan*/  FUNC0 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_drv_cc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_bus*,char*,int) ; 

__attribute__((used)) static void FUNC4(struct bcma_drv_cc *cc)
{
	struct bcma_bus *bus = cc->core->bus;

	switch (bus->chipinfo.id) {
	case BCMA_CHIP_ID_BCM4313:
		/* enable 12 mA drive strenth for 4313 and set chipControl
		   register bit 1 */
		FUNC2(cc, 0,
					    ~BCMA_CCTRL_4313_12MA_LED_DRIVE,
					    BCMA_CCTRL_4313_12MA_LED_DRIVE);
		break;
	case BCMA_CHIP_ID_BCM4331:
	case BCMA_CHIP_ID_BCM43431:
		/* Ext PA lines must be enabled for tx on BCM4331 */
		FUNC1(cc, true);
		break;
	case BCMA_CHIP_ID_BCM43224:
	case BCMA_CHIP_ID_BCM43421:
		/* enable 12 mA drive strenth for 43224 and set chipControl
		   register bit 15 */
		if (bus->chipinfo.rev == 0) {
			FUNC0(cc, BCMA_CC_CHIPCTL,
					  ~BCMA_CCTRL_43224_GPIO_TOGGLE,
					  BCMA_CCTRL_43224_GPIO_TOGGLE);
			FUNC2(cc, 0,
						    ~BCMA_CCTRL_43224A0_12MA_LED_DRIVE,
						    BCMA_CCTRL_43224A0_12MA_LED_DRIVE);
		} else {
			FUNC2(cc, 0,
						    ~BCMA_CCTRL_43224B0_12MA_LED_DRIVE,
						    BCMA_CCTRL_43224B0_12MA_LED_DRIVE);
		}
		break;
	default:
		FUNC3(bus, "Workarounds unknown or not needed for device 0x%04X\n",
			   bus->chipinfo.id);
	}
}