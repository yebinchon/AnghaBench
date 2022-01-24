#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct hci_uart {int init_speed; int oper_speed; TYPE_2__* hdev; TYPE_1__* proto; struct bcm_data* priv; } ;
struct firmware {int dummy; } ;
struct bcm_data {int dummy; } ;
typedef  int /*<<< orphan*/  fw_name ;
struct TYPE_8__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  set_bdaddr; int /*<<< orphan*/  set_diag; } ;
struct TYPE_7__ {int init_speed; int oper_speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_data*) ; 
 int FUNC1 (struct hci_uart*,unsigned int) ; 
 int /*<<< orphan*/  bcm_set_diag ; 
 int FUNC2 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,char*,int,int) ; 
 int FUNC7 (TYPE_2__*,struct firmware const*) ; 
 int /*<<< orphan*/  btbcm_set_bdaddr ; 
 int /*<<< orphan*/  FUNC8 (struct hci_uart*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct firmware const*) ; 
 int FUNC10 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct hci_uart *hu)
{
	struct bcm_data *bcm = hu->priv;
	char fw_name[64];
	const struct firmware *fw;
	unsigned int speed;
	int err;

	FUNC3(hu->hdev, "hu %p", hu);

	hu->hdev->set_diag = bcm_set_diag;
	hu->hdev->set_bdaddr = btbcm_set_bdaddr;

	err = FUNC6(hu->hdev, fw_name, sizeof(fw_name), false);
	if (err)
		return err;

	err = FUNC10(&fw, fw_name, &hu->hdev->dev);
	if (err < 0) {
		FUNC4(hu->hdev, "BCM: Patch %s not found", fw_name);
		return 0;
	}

	err = FUNC7(hu->hdev, fw);
	if (err) {
		FUNC4(hu->hdev, "BCM: Patch failed (%d)", err);
		goto finalize;
	}

	/* Init speed if any */
	if (hu->init_speed)
		speed = hu->init_speed;
	else if (hu->proto->init_speed)
		speed = hu->proto->init_speed;
	else
		speed = 0;

	if (speed)
		FUNC8(hu, speed);

	/* Operational speed if any */
	if (hu->oper_speed)
		speed = hu->oper_speed;
	else if (hu->proto->oper_speed)
		speed = hu->proto->oper_speed;
	else
		speed = 0;

	if (speed) {
		err = FUNC1(hu, speed);
		if (!err)
			FUNC8(hu, speed);
	}

finalize:
	FUNC9(fw);

	err = FUNC5(hu->hdev);
	if (err)
		return err;

	if (!FUNC0(bcm))
		err = FUNC2(hu);

	return err;
}