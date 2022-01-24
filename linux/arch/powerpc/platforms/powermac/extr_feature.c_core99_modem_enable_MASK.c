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
struct TYPE_2__ {scalar_t__ type; struct device_node* of_node; } ;

/* Variables and functions */
 long ENODEV ; 
 int /*<<< orphan*/  KEYLARGO_FCR2 ; 
 int KEYLARGO_GPIO_OUTOUT_DATA ; 
 int KEYLARGO_GPIO_OUTPUT_ENABLE ; 
 int /*<<< orphan*/  KL2_ALT_DATA_OUT ; 
 int /*<<< orphan*/  KL_GPIO_MODEM_RESET ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 TYPE_1__* macio_chips ; 
 struct macio_chip* FUNC7 (struct device_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ macio_keylargo ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static long
FUNC9(struct device_node *node, long param, long value)
{
	struct macio_chip*	macio;
	u8			gpio;
	unsigned long		flags;

	/* Hack for internal USB modem */
	if (node == NULL) {
		if (macio_chips[0].type != macio_keylargo)
			return -ENODEV;
		node = macio_chips[0].of_node;
	}
	macio = FUNC7(node, 0);
	if (!macio)
		return -ENODEV;
	gpio = FUNC4(KL_GPIO_MODEM_RESET);
	gpio |= KEYLARGO_GPIO_OUTPUT_ENABLE;
	gpio &= ~KEYLARGO_GPIO_OUTOUT_DATA;

	if (!value) {
		FUNC0(flags);
		FUNC5(KL_GPIO_MODEM_RESET, gpio);
		FUNC6(flags);
		(void)FUNC4(KL_GPIO_MODEM_RESET);
		FUNC8(250);
	}
	FUNC0(flags);
	if (value) {
		FUNC1(KEYLARGO_FCR2, KL2_ALT_DATA_OUT);
		FUNC6(flags);
		(void)FUNC3(KEYLARGO_FCR2);
		FUNC8(250);
	} else {
		FUNC2(KEYLARGO_FCR2, KL2_ALT_DATA_OUT);
		FUNC6(flags);
	}
	if (value) {
		FUNC0(flags);
		FUNC5(KL_GPIO_MODEM_RESET, gpio | KEYLARGO_GPIO_OUTOUT_DATA);
		(void)FUNC4(KL_GPIO_MODEM_RESET);
		FUNC6(flags); FUNC8(250); FUNC0(flags);
		FUNC5(KL_GPIO_MODEM_RESET, gpio);
		(void)FUNC4(KL_GPIO_MODEM_RESET);
		FUNC6(flags); FUNC8(250); FUNC0(flags);
		FUNC5(KL_GPIO_MODEM_RESET, gpio | KEYLARGO_GPIO_OUTOUT_DATA);
		(void)FUNC4(KL_GPIO_MODEM_RESET);
		FUNC6(flags); FUNC8(250);
	}
	return 0;
}