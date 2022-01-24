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
typedef  int /*<<< orphan*/  u8 ;
struct bt_bmc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_BMC2HOST ; 
 int /*<<< orphan*/  FUNC0 (struct bt_bmc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC1(struct bt_bmc *bt_bmc)
{
	return FUNC0(bt_bmc, BT_BMC2HOST);
}