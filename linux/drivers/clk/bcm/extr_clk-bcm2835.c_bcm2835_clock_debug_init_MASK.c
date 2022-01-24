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
struct dentry {int dummy; } ;
struct clk_hw {int dummy; } ;
struct bcm2835_cprman {int dummy; } ;
struct bcm2835_clock_data {int /*<<< orphan*/  ctl_reg; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bcm2835_clock* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  bcm2835_debugfs_clock_reg32 ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_cprman*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry*) ; 

__attribute__((used)) static void FUNC3(struct clk_hw *hw,
				    struct dentry *dentry)
{
	struct bcm2835_clock *clock = FUNC1(hw);
	struct bcm2835_cprman *cprman = clock->cprman;
	const struct bcm2835_clock_data *data = clock->data;

	FUNC2(cprman, data->ctl_reg,
		bcm2835_debugfs_clock_reg32,
		FUNC0(bcm2835_debugfs_clock_reg32),
		dentry);
}