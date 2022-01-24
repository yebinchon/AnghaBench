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
struct clk_creg_data {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPC18XX_CREG_CREG0 ; 
 int /*<<< orphan*/  LPC18XX_CREG_CREG0_PD32KHZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_creg_data* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC2(struct clk_hw *hw)
{
	struct clk_creg_data *creg = FUNC1(hw);

	FUNC0(creg->reg, LPC18XX_CREG_CREG0,
			   LPC18XX_CREG_CREG0_PD32KHZ,
			   LPC18XX_CREG_CREG0_PD32KHZ);
}