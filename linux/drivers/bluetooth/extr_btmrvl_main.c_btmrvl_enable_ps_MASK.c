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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {scalar_t__ psmode; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CMD_AUTO_SLEEP_MODE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BT_PS_DISABLE ; 
 int /*<<< orphan*/  BT_PS_ENABLE ; 
 int FUNC1 (struct btmrvl_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC2(struct btmrvl_private *priv)
{
	int ret;
	u8 param;

	if (priv->btmrvl_dev.psmode)
		param = BT_PS_ENABLE;
	else
		param = BT_PS_DISABLE;

	ret = FUNC1(priv, BT_CMD_AUTO_SLEEP_MODE, &param, 1);
	if (ret)
		FUNC0("PSMODE command failed");

	return 0;
}