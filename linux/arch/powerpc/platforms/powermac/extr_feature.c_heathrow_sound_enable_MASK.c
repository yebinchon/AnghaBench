#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ model_id; } ;

/* Variables and functions */
 long ENODEV ; 
 int /*<<< orphan*/  HEATHROW_FCR ; 
 int /*<<< orphan*/  HRW_SOUND_CLK_ENABLE ; 
 int /*<<< orphan*/  HRW_SOUND_POWER_N ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PMAC_TYPE_YIKES ; 
 scalar_t__ PMAC_TYPE_YOSEMITE ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 struct macio_chip* FUNC5 (struct device_node*,int /*<<< orphan*/ ) ; 
 TYPE_1__ pmac_mb ; 

__attribute__((used)) static long FUNC6(struct device_node *node, long param,
				  long value)
{
	struct macio_chip*	macio;
	unsigned long		flags;

	/* B&W G3 and Yikes don't support that properly (the
	 * sound appear to never come back after being shut down).
	 */
	if (pmac_mb.model_id == PMAC_TYPE_YOSEMITE ||
	    pmac_mb.model_id == PMAC_TYPE_YIKES)
		return 0;

	macio = FUNC5(node, 0);
	if (!macio)
		return -ENODEV;
	if (value) {
		FUNC0(flags);
		FUNC2(HEATHROW_FCR, HRW_SOUND_CLK_ENABLE);
		FUNC1(HEATHROW_FCR, HRW_SOUND_POWER_N);
		FUNC4(flags);
		(void)FUNC3(HEATHROW_FCR);
	} else {
		FUNC0(flags);
		FUNC2(HEATHROW_FCR, HRW_SOUND_POWER_N);
		FUNC1(HEATHROW_FCR, HRW_SOUND_CLK_ENABLE);
		FUNC4(flags);
	}
	return 0;
}