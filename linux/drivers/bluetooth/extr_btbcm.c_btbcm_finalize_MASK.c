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
struct hci_dev {int /*<<< orphan*/  quirks; } ;
typedef  int /*<<< orphan*/  fw_name ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_QUIRK_STRICT_DUPLICATE_FILTER ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*) ; 
 int FUNC1 (struct hci_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct hci_dev *hdev)
{
	char fw_name[64];
	int err;

	/* Re-initialize */
	err = FUNC1(hdev, fw_name, sizeof(fw_name), true);
	if (err)
		return err;

	FUNC0(hdev);

	FUNC2(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks);

	return 0;
}