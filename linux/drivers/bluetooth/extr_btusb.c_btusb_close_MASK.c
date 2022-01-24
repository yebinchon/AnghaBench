#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hci_dev {int /*<<< orphan*/  name; } ;
struct btusb_data {int /*<<< orphan*/  deferred; TYPE_1__* intf; int /*<<< orphan*/  flags; int /*<<< orphan*/  waker; int /*<<< orphan*/  work; } ;
struct TYPE_3__ {int needs_remote_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTUSB_BULK_RUNNING ; 
 int /*<<< orphan*/  BTUSB_DIAG_RUNNING ; 
 int /*<<< orphan*/  BTUSB_INTR_RUNNING ; 
 int /*<<< orphan*/  BTUSB_ISOC_RUNNING ; 
 int /*<<< orphan*/  BTUSB_WAKEUP_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btusb_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct btusb_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct btusb_data* FUNC5 (struct hci_dev*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct hci_dev *hdev)
{
	struct btusb_data *data = FUNC5(hdev);
	int err;

	FUNC0("%s", hdev->name);

	FUNC3(&data->work);
	FUNC3(&data->waker);

	FUNC4(BTUSB_ISOC_RUNNING, &data->flags);
	FUNC4(BTUSB_BULK_RUNNING, &data->flags);
	FUNC4(BTUSB_INTR_RUNNING, &data->flags);
	FUNC4(BTUSB_DIAG_RUNNING, &data->flags);

	FUNC2(data);
	FUNC1(data);

	err = FUNC7(data->intf);
	if (err < 0)
		goto failed;

	data->intf->needs_remote_wakeup = 0;

	/* Enable remote wake up for auto-suspend */
	if (FUNC6(BTUSB_WAKEUP_DISABLE, &data->flags))
		data->intf->needs_remote_wakeup = 1;

	FUNC8(data->intf);

failed:
	FUNC9(&data->deferred);
	return 0;
}