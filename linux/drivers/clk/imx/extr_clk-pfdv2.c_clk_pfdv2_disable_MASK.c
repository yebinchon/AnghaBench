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
typedef  int u32 ;
struct clk_pfdv2 {int gate_bit; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  pfd_lock ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct clk_pfdv2* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct clk_hw *hw)
{
	struct clk_pfdv2 *pfd = FUNC3(hw);
	unsigned long flags;
	u32 val;

	FUNC1(&pfd_lock, flags);
	val = FUNC0(pfd->reg);
	val |= (1 << pfd->gate_bit);
	FUNC4(val, pfd->reg);
	FUNC2(&pfd_lock, flags);
}