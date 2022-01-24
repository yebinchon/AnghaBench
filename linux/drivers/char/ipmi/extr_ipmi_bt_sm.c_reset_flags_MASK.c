#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct si_sm_data {TYPE_1__* io; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_BMC_HWRST ; 
 int BT_CLR_WR_PTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BT_H_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int BT_SMS_ATN ; 
 int BT_STATUS ; 
 scalar_t__ bt_debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct si_sm_data *bt)
{
	if (bt_debug)
		FUNC2(bt->io->dev, "flag reset %s\n", FUNC3(BT_STATUS));
	if (BT_STATUS & BT_H_BUSY)
		FUNC0(BT_H_BUSY);	/* force clear */
	FUNC0(BT_CLR_WR_PTR);	/* always reset */
	FUNC0(BT_SMS_ATN);		/* always clear */
	FUNC1(BT_BMC_HWRST);
}