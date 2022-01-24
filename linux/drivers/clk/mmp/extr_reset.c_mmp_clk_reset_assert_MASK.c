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
typedef  int /*<<< orphan*/  u32 ;
struct reset_controller_dev {int dummy; } ;
struct mmp_clk_reset_unit {struct mmp_clk_reset_cell* cells; } ;
struct mmp_clk_reset_cell {scalar_t__ lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  bits; } ;

/* Variables and functions */
 struct mmp_clk_reset_unit* FUNC0 (struct reset_controller_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct reset_controller_dev *rcdev,
				unsigned long id)
{
	struct mmp_clk_reset_unit *unit = FUNC0(rcdev);
	struct mmp_clk_reset_cell *cell;
	unsigned long flags = 0;
	u32 val;

	cell = &unit->cells[id];
	if (cell->lock)
		FUNC2(cell->lock, flags);

	val = FUNC1(cell->reg);
	val |= cell->bits;
	FUNC4(val, cell->reg);

	if (cell->lock)
		FUNC3(cell->lock, flags);

	return 0;
}