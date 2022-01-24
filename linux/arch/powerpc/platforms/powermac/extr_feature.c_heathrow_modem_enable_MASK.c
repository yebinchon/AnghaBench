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
typedef  int u8 ;
struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ model_id; } ;

/* Variables and functions */
 long ENODEV ; 
 int /*<<< orphan*/  HEATHROW_FCR ; 
 int /*<<< orphan*/  HRW_GPIO_MODEM_RESET ; 
 int /*<<< orphan*/  HRW_SCC_TRANS_EN_N ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PMAC_TYPE_YIKES ; 
 scalar_t__ PMAC_TYPE_YOSEMITE ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 struct macio_chip* FUNC7 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  macio_unknown ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_1__ pmac_mb ; 

__attribute__((used)) static long FUNC9(struct device_node *node, long param,
				  long value)
{
	struct macio_chip*	macio;
	u8			gpio;
	unsigned long		flags;

	macio = FUNC7(node, macio_unknown);
	if (!macio)
		return -ENODEV;
	gpio = FUNC4(HRW_GPIO_MODEM_RESET) & ~1;
	if (!value) {
		FUNC0(flags);
		FUNC5(HRW_GPIO_MODEM_RESET, gpio);
		FUNC6(flags);
		(void)FUNC4(HRW_GPIO_MODEM_RESET);
		FUNC8(250);
	}
	if (pmac_mb.model_id != PMAC_TYPE_YOSEMITE &&
	    pmac_mb.model_id != PMAC_TYPE_YIKES) {
		FUNC0(flags);
		if (value)
			FUNC1(HEATHROW_FCR, HRW_SCC_TRANS_EN_N);
		else
			FUNC2(HEATHROW_FCR, HRW_SCC_TRANS_EN_N);
		FUNC6(flags);
		(void)FUNC3(HEATHROW_FCR);
		FUNC8(250);
	}
	if (value) {
		FUNC0(flags);
		FUNC5(HRW_GPIO_MODEM_RESET, gpio | 1);
		(void)FUNC4(HRW_GPIO_MODEM_RESET);
		FUNC6(flags); FUNC8(250); FUNC0(flags);
		FUNC5(HRW_GPIO_MODEM_RESET, gpio);
		(void)FUNC4(HRW_GPIO_MODEM_RESET);
		FUNC6(flags); FUNC8(250); FUNC0(flags);
		FUNC5(HRW_GPIO_MODEM_RESET, gpio | 1);
		(void)FUNC4(HRW_GPIO_MODEM_RESET);
		FUNC6(flags); FUNC8(250);
	}
	return 0;
}