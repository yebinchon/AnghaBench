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
struct clk_hw {int dummy; } ;
struct clk_apbc {int flags; scalar_t__ lock; int /*<<< orphan*/  base; int /*<<< orphan*/  delay; } ;

/* Variables and functions */
 unsigned int APBC_APBCLK ; 
 unsigned int APBC_FNCLK ; 
 int APBC_NO_BUS_CTRL ; 
 unsigned int APBC_POWER ; 
 int APBC_POWER_CTRL ; 
 unsigned int APBC_RST ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 struct clk_apbc* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw)
{
	struct clk_apbc *apbc = FUNC3(hw);
	unsigned int data;
	unsigned long flags = 0;

	/*
	 * It may share same register as MUX clock,
	 * and it will impact FNCLK enable. Spinlock is needed
	 */
	if (apbc->lock)
		FUNC1(apbc->lock, flags);

	data = FUNC0(apbc->base);
	if (apbc->flags & APBC_POWER_CTRL)
		data |= APBC_POWER;
	data |= APBC_FNCLK;
	FUNC5(data, apbc->base);

	if (apbc->lock)
		FUNC2(apbc->lock, flags);

	FUNC4(apbc->delay);

	if (apbc->lock)
		FUNC1(apbc->lock, flags);

	data = FUNC0(apbc->base);
	data |= APBC_APBCLK;
	FUNC5(data, apbc->base);

	if (apbc->lock)
		FUNC2(apbc->lock, flags);

	FUNC4(apbc->delay);

	if (!(apbc->flags & APBC_NO_BUS_CTRL)) {
		if (apbc->lock)
			FUNC1(apbc->lock, flags);

		data = FUNC0(apbc->base);
		data &= ~APBC_RST;
		FUNC5(data, apbc->base);

		if (apbc->lock)
			FUNC2(apbc->lock, flags);
	}

	return 0;
}