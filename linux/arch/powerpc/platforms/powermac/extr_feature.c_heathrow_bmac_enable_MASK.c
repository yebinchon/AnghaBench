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
struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 long ENODEV ; 
 int /*<<< orphan*/  HEATHROW_FCR ; 
 int /*<<< orphan*/  HRW_BMAC_IO_ENABLE ; 
 int /*<<< orphan*/  HRW_BMAC_RESET ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 struct macio_chip* FUNC5 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static long FUNC7(struct device_node *node, long param,
				 long value)
{
	struct macio_chip*	macio;
	unsigned long		flags;

	macio = FUNC5(node, 0);
	if (!macio)
		return -ENODEV;
	if (value) {
		FUNC0(flags);
		FUNC2(HEATHROW_FCR, HRW_BMAC_IO_ENABLE);
		FUNC2(HEATHROW_FCR, HRW_BMAC_RESET);
		FUNC4(flags);
		(void)FUNC3(HEATHROW_FCR);
		FUNC6(10);
		FUNC0(flags);
		FUNC1(HEATHROW_FCR, HRW_BMAC_RESET);
		FUNC4(flags);
		(void)FUNC3(HEATHROW_FCR);
		FUNC6(10);
	} else {
		FUNC0(flags);
		FUNC1(HEATHROW_FCR, HRW_BMAC_IO_ENABLE);
		FUNC4(flags);
	}
	return 0;
}