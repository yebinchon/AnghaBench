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
 int FUNC0 (struct clk_pfdv2*) ; 
 int /*<<< orphan*/  pfd_lock ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct clk_pfdv2* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw)
{
	struct clk_pfdv2 *pfd = FUNC4(hw);
	unsigned long flags;
	u32 val;

	FUNC2(&pfd_lock, flags);
	val = FUNC1(pfd->reg);
	val &= ~(1 << pfd->gate_bit);
	FUNC5(val, pfd->reg);
	FUNC3(&pfd_lock, flags);

	return FUNC0(pfd);
}