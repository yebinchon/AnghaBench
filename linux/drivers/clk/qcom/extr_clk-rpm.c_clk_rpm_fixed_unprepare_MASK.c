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
struct clk_rpm {int enabled; int /*<<< orphan*/  rpm_clk_id; int /*<<< orphan*/  rpm; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QCOM_RPM_ACTIVE_STATE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct clk_rpm* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC2(struct clk_hw *hw)
{
	struct clk_rpm *r = FUNC1(hw);
	u32 value = 0;
	int ret;

	ret = FUNC0(r->rpm, QCOM_RPM_ACTIVE_STATE,
			     r->rpm_clk_id, &value, 1);
	if (!ret)
		r->enabled = false;
}