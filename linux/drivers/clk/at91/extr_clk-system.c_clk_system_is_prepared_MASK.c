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
 int /*<<< orphan*/  AT91_PMC_SCSR ; 
 int /*<<< orphan*/  AT91_PMC_SR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct clk_system* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct clk_system *sys = FUNC2(hw);
	unsigned int status;

	FUNC1(sys->regmap, AT91_PMC_SCSR, &status);

	if (!(status & (1 << sys->id)))
		return 0;

	if (!FUNC0(sys->id))
		return 1;

	FUNC1(sys->regmap, AT91_PMC_SR, &status);

	return status & (1 << sys->id) ? 1 : 0;
}