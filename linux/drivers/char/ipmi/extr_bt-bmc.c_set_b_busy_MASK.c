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
struct bt_bmc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CTRL ; 
 int BT_CTRL_B_BUSY ; 
 int FUNC0 (struct bt_bmc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bt_bmc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bt_bmc *bt_bmc)
{
	if (!(FUNC0(bt_bmc, BT_CTRL) & BT_CTRL_B_BUSY))
		FUNC1(bt_bmc, BT_CTRL_B_BUSY, BT_CTRL);
}