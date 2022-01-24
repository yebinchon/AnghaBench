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
struct clk_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  en_reg; int /*<<< orphan*/  en_bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_device* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw)
{
	struct clk_device *cdev = FUNC4(hw);
	u32 en_val;
	unsigned long flags = 0;

	FUNC2(cdev->lock, flags);

	en_val = FUNC1(cdev->en_reg);
	en_val |= FUNC0(cdev->en_bit);
	FUNC5(en_val, cdev->en_reg);

	FUNC3(cdev->lock, flags);
	return 0;
}