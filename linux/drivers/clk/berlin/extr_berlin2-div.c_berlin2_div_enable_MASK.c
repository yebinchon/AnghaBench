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
struct clk_hw {int dummy; } ;
struct berlin2_div_map {scalar_t__ gate_offs; int /*<<< orphan*/  gate_shift; } ;
struct berlin2_div {scalar_t__ lock; scalar_t__ base; struct berlin2_div_map map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct berlin2_div* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw)
{
	struct berlin2_div *div = FUNC4(hw);
	struct berlin2_div_map *map = &div->map;
	u32 reg;

	if (div->lock)
		FUNC2(div->lock);

	reg = FUNC1(div->base + map->gate_offs);
	reg |= FUNC0(map->gate_shift);
	FUNC5(reg, div->base + map->gate_offs);

	if (div->lock)
		FUNC3(div->lock);

	return 0;
}