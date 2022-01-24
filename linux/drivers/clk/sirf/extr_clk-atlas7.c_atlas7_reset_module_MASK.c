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
struct reset_controller_dev {int dummy; } ;
struct atlas7_reset_desc {int clk_bit; int rst_bit; int /*<<< orphan*/  lock; scalar_t__ rst_ofs; scalar_t__ clk_ofs; } ;

/* Variables and functions */
 struct atlas7_reset_desc* atlas7_reset_unit ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct reset_controller_dev *rcdev,
					unsigned long reset_idx)
{
	struct atlas7_reset_desc *reset = &atlas7_reset_unit[reset_idx];
	unsigned long flags;

	/*
	 * HW suggest unit reset sequence:
	 * assert sw reset (0)
	 * setting sw clk_en to if the clock was disabled before reset
	 * delay 16 clocks
	 * disable clock (sw clk_en = 0)
	 * de-assert reset (1)
	 * after this sequence, restore clock or not is decided by SW
	 */

	FUNC2(reset->lock, flags);
	/* clock enable or not */
	if (FUNC0(reset->clk_ofs + 8) & (1 << reset->clk_bit)) {
		FUNC1(1 << reset->rst_bit, reset->rst_ofs + 4);
		FUNC4(2);
		FUNC1(1 << reset->clk_bit, reset->clk_ofs + 4);
		FUNC1(1 << reset->rst_bit, reset->rst_ofs);
		/* restore clock enable */
		FUNC1(1 << reset->clk_bit, reset->clk_ofs);
	} else {
		FUNC1(1 << reset->rst_bit, reset->rst_ofs + 4);
		FUNC1(1 << reset->clk_bit, reset->clk_ofs);
		FUNC4(2);
		FUNC1(1 << reset->clk_bit, reset->clk_ofs + 4);
		FUNC1(1 << reset->rst_bit, reset->rst_ofs);
	}
	FUNC3(reset->lock, flags);

	return 0;
}