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
struct btmrvl_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CMD_ROUTE_SCO_TO_HOST ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct btmrvl_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct btmrvl_private *priv)
{
	int ret;
	u8 subcmd = 0;

	ret = FUNC1(priv, BT_CMD_ROUTE_SCO_TO_HOST, &subcmd, 1);
	if (ret)
		FUNC0("BT_CMD_ROUTE_SCO_TO_HOST command failed: %#x", ret);

	return ret;
}