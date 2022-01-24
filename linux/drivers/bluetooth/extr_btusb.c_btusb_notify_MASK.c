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
struct hci_dev {int /*<<< orphan*/  name; } ;
struct btusb_data {scalar_t__ sco_num; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  SCO_LINK ; 
 scalar_t__ FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct btusb_data* FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hci_dev *hdev, unsigned int evt)
{
	struct btusb_data *data = FUNC2(hdev);

	FUNC0("%s evt %d", hdev->name, evt);

	if (FUNC1(hdev, SCO_LINK) != data->sco_num) {
		data->sco_num = FUNC1(hdev, SCO_LINK);
		FUNC3(&data->work);
	}
}