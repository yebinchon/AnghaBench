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
typedef  int u8 ;
struct clk_hw {int dummy; } ;
struct alchemy_fgcs_clk {int shift; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct alchemy_fgcs_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC2(struct clk_hw *hw)
{
	struct alchemy_fgcs_clk *c = FUNC1(hw);

	return (FUNC0(c->reg) >> c->shift) & 1;
}