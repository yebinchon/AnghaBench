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
struct clk_mux {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_mux*) ; 
 struct clk_mux* FUNC2 (struct clk_hw*) ; 

void FUNC3(struct clk_hw *hw)
{
	struct clk_mux *mux;

	mux = FUNC2(hw);

	FUNC0(hw);
	FUNC1(mux);
}