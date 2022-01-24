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
typedef  int u64 ;
struct clk_pfd {int idx; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct clk_pfd* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
					 unsigned long parent_rate)
{
	struct clk_pfd *pfd = FUNC2(hw);
	u64 tmp = parent_rate;
	u8 frac = (FUNC1(pfd->reg) >> (pfd->idx * 8)) & 0x3f;

	tmp *= 18;
	FUNC0(tmp, frac);

	return tmp;
}