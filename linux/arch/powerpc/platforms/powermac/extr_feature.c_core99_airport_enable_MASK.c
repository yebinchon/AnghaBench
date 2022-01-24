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
struct macio_chip {int flags; struct device_node* of_node; } ;
struct device_node {struct device_node* parent; } ;

/* Variables and functions */
 long ENODEV ; 
 int /*<<< orphan*/  KEYLARGO_FCR2 ; 
 int KEYLARGO_GPIO_0 ; 
 int KEYLARGO_GPIO_EXTINT_0 ; 
 int /*<<< orphan*/  KL2_CARDSEL_16 ; 
 int KL_GPIO_AIRPORT_0 ; 
 int KL_GPIO_AIRPORT_1 ; 
 int KL_GPIO_AIRPORT_2 ; 
 int KL_GPIO_AIRPORT_3 ; 
 int KL_GPIO_AIRPORT_4 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MACIO_FLAG_AIRPORT_ON ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 struct macio_chip* FUNC8 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static long
FUNC11(struct device_node *node, long param, long value)
{
	struct macio_chip*	macio;
	unsigned long		flags;
	int			state;

	macio = FUNC8(node, 0);
	if (!macio)
		return -ENODEV;

	/* Hint: we allow passing of macio itself for the sake of the
	 * sleep code
	 */
	if (node != macio->of_node &&
	    (!node->parent || node->parent != macio->of_node))
		return -ENODEV;
	state = (macio->flags & MACIO_FLAG_AIRPORT_ON) != 0;
	if (value == state)
		return 0;
	if (value) {
		/* This code is a reproduction of OF enable-cardslot
		 * and init-wireless methods, slightly hacked until
		 * I got it working.
		 */
		FUNC0(flags);
		FUNC6(KEYLARGO_GPIO_0+0xf, 5);
		(void)FUNC4(KEYLARGO_GPIO_0+0xf);
		FUNC7(flags);
		FUNC9(10);
		FUNC0(flags);
		FUNC6(KEYLARGO_GPIO_0+0xf, 4);
		(void)FUNC4(KEYLARGO_GPIO_0+0xf);
		FUNC7(flags);

		FUNC9(10);

		FUNC0(flags);
		FUNC1(KEYLARGO_FCR2, KL2_CARDSEL_16);
		(void)FUNC3(KEYLARGO_FCR2);
		FUNC10(10);
		FUNC6(KEYLARGO_GPIO_EXTINT_0+0xb, 0);
		(void)FUNC4(KEYLARGO_GPIO_EXTINT_0+0xb);
		FUNC10(10);
		FUNC6(KEYLARGO_GPIO_EXTINT_0+0xa, 0x28);
		(void)FUNC4(KEYLARGO_GPIO_EXTINT_0+0xa);
		FUNC10(10);
		FUNC6(KEYLARGO_GPIO_EXTINT_0+0xd, 0x28);
		(void)FUNC4(KEYLARGO_GPIO_EXTINT_0+0xd);
		FUNC10(10);
		FUNC6(KEYLARGO_GPIO_0+0xd, 0x28);
		(void)FUNC4(KEYLARGO_GPIO_0+0xd);
		FUNC10(10);
		FUNC6(KEYLARGO_GPIO_0+0xe, 0x28);
		(void)FUNC4(KEYLARGO_GPIO_0+0xe);
		FUNC7(flags);
		FUNC10(10);
		FUNC5(0x1c000, 0);
		FUNC9(1);
		FUNC6(0x1a3e0, 0x41);
		(void)FUNC4(0x1a3e0);
		FUNC10(10);
		FUNC0(flags);
		FUNC2(KEYLARGO_FCR2, KL2_CARDSEL_16);
		(void)FUNC3(KEYLARGO_FCR2);
		FUNC7(flags);
		FUNC9(100);

		macio->flags |= MACIO_FLAG_AIRPORT_ON;
	} else {
		FUNC0(flags);
		FUNC1(KEYLARGO_FCR2, KL2_CARDSEL_16);
		(void)FUNC3(KEYLARGO_FCR2);
		FUNC6(KL_GPIO_AIRPORT_0, 0);
		FUNC6(KL_GPIO_AIRPORT_1, 0);
		FUNC6(KL_GPIO_AIRPORT_2, 0);
		FUNC6(KL_GPIO_AIRPORT_3, 0);
		FUNC6(KL_GPIO_AIRPORT_4, 0);
		(void)FUNC4(KL_GPIO_AIRPORT_4);
		FUNC7(flags);

		macio->flags &= ~MACIO_FLAG_AIRPORT_ON;
	}
	return 0;
}