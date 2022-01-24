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
struct ccu_data {int dummy; } ;
struct bcm_clk_hyst {int offset; int en_bit; int val_bit; } ;

/* Variables and functions */
 int FUNC0 (struct ccu_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ccu_data*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_clk_hyst*) ; 

__attribute__((used)) static bool FUNC3(struct ccu_data *ccu, struct bcm_clk_hyst *hyst)
{
	u32 offset;
	u32 reg_val;
	u32 mask;

	if (!FUNC2(hyst))
		return true;

	offset = hyst->offset;
	mask = (u32)1 << hyst->en_bit;
	mask |= (u32)1 << hyst->val_bit;

	reg_val = FUNC0(ccu, offset);
	reg_val |= mask;
	FUNC1(ccu, offset, reg_val);

	return true;
}