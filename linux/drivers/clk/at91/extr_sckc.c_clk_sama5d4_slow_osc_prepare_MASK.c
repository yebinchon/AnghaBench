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
struct clk_sama5d4_slow_osc {int prepared; scalar_t__ startup_usec; TYPE_1__* bits; int /*<<< orphan*/  sckcr; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int cr_oscsel; } ;

/* Variables and functions */
 scalar_t__ SYSTEM_RUNNING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ system_state ; 
 struct clk_sama5d4_slow_osc* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct clk_sama5d4_slow_osc *osc = FUNC1(hw);

	if (osc->prepared)
		return 0;

	/*
	 * Assume that if it has already been selected (for example by the
	 * bootloader), enough time has aready passed.
	 */
	if ((FUNC0(osc->sckcr) & osc->bits->cr_oscsel)) {
		osc->prepared = true;
		return 0;
	}

	if (system_state < SYSTEM_RUNNING)
		FUNC2(osc->startup_usec);
	else
		FUNC3(osc->startup_usec, osc->startup_usec + 1);
	osc->prepared = true;

	return 0;
}