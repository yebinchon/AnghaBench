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
struct clk_system {int id; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PMC_SCDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct clk_system* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC2(struct clk_hw *hw)
{
	struct clk_system *sys = FUNC1(hw);

	FUNC0(sys->regmap, AT91_PMC_SCDR, 1 << sys->id);
}