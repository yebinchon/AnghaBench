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
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int gpio_gap; int psmode; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODULE_BRINGUP_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct btmrvl_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btmrvl_private*) ; 
 int FUNC5 (struct btmrvl_private*,int /*<<< orphan*/ ) ; 
 struct btmrvl_private* FUNC6 (struct hci_dev*) ; 

__attribute__((used)) static int FUNC7(struct hci_dev *hdev)
{
	struct btmrvl_private *priv = FUNC6(hdev);
	int ret;

	ret = FUNC5(priv, MODULE_BRINGUP_REQ);
	if (ret)
		return ret;

	priv->btmrvl_dev.gpio_gap = 0xfffe;

	FUNC0(priv);

	FUNC2(priv);

	FUNC3(priv, 0x01);

	priv->btmrvl_dev.psmode = 1;
	FUNC1(priv);

	FUNC4(priv);

	return 0;
}