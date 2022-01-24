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
struct ti_sysc_module_data {int dummy; } ;
struct omap_hwmod {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dra7_reset_quirks ; 
 int /*<<< orphan*/  omap24xx_reset_quirks ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct omap_hwmod*,struct ti_sysc_module_data const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap_reset_quirks ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void
FUNC4(struct device *dev, struct omap_hwmod *oh,
			     const struct ti_sysc_module_data *data)
{
	if (FUNC3())
		FUNC1(dev, oh, data,
					    omap24xx_reset_quirks,
					    FUNC0(omap24xx_reset_quirks));

	if (FUNC2())
		FUNC1(dev, oh, data, dra7_reset_quirks,
					    FUNC0(dra7_reset_quirks));

	FUNC1(dev, oh, data, omap_reset_quirks,
				    FUNC0(omap_reset_quirks));
}