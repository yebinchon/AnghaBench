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
struct device {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

int FUNC3(struct device *dev, struct clk_hw *hw)
{
	return FUNC0(FUNC1(dev, FUNC2(dev), hw));
}