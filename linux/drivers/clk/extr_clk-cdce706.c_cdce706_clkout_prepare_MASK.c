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
struct cdce706_hw_data {int /*<<< orphan*/  idx; int /*<<< orphan*/  dev_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CDCE706_CLKOUT_ENABLE_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cdce706_hw_data* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct cdce706_hw_data *hwd = FUNC2(hw);

	return FUNC1(hwd->dev_data, FUNC0(hwd->idx),
				  CDCE706_CLKOUT_ENABLE_MASK,
				  CDCE706_CLKOUT_ENABLE_MASK);
}