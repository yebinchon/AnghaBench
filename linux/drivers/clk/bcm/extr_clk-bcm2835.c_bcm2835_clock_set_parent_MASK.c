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
struct bcm2835_cprman {int dummy; } ;
struct bcm2835_clock_data {int /*<<< orphan*/  ctl_reg; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;

/* Variables and functions */
 int CM_SRC_MASK ; 
 int CM_SRC_SHIFT ; 
 struct bcm2835_clock* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_cprman*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw, u8 index)
{
	struct bcm2835_clock *clock = FUNC0(hw);
	struct bcm2835_cprman *cprman = clock->cprman;
	const struct bcm2835_clock_data *data = clock->data;
	u8 src = (index << CM_SRC_SHIFT) & CM_SRC_MASK;

	FUNC1(cprman, data->ctl_reg, src);
	return 0;
}