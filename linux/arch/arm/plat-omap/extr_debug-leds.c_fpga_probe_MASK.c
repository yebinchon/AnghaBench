#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  brightness_get; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  name; } ;
struct dbg_led {TYPE_1__ cdev; int /*<<< orphan*/  mask; } ;
struct TYPE_8__ {int /*<<< orphan*/  trigger; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  leds; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  dbg_led_get ; 
 int /*<<< orphan*/  dbg_led_set ; 
 TYPE_4__* dbg_leds ; 
 TYPE_2__* fpga ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dbg_led*) ; 
 struct dbg_led* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct resource	*iomem;
	int i;

	iomem = FUNC6(pdev, IORESOURCE_MEM, 0);
	if (!iomem)
		return -ENODEV;

	fpga = FUNC2(iomem->start, FUNC7(iomem));
	FUNC8(0xff, &fpga->leds);

	for (i = 0; i < FUNC0(dbg_leds); i++) {
		struct dbg_led *led;

		led = FUNC4(sizeof(*led), GFP_KERNEL);
		if (!led)
			break;

		led->cdev.name = dbg_leds[i].name;
		led->cdev.brightness_set = dbg_led_set;
		led->cdev.brightness_get = dbg_led_get;
		led->cdev.default_trigger = dbg_leds[i].trigger;
		led->mask = FUNC1(i);

		if (FUNC5(NULL, &led->cdev) < 0) {
			FUNC3(led);
			break;
		}
	}

	return 0;
}