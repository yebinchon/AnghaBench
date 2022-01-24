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
struct clk_ref {int idx; scalar_t__ reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ SET ; 
 struct clk_ref* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct clk_hw *hw)
{
	struct clk_ref *ref = FUNC0(hw);

	FUNC1(1 << ((ref->idx + 1) * 8 - 1), ref->reg + SET);
}