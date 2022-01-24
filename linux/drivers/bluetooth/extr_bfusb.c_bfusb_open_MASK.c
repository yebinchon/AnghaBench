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
struct hci_dev {int dummy; } ;
struct bfusb_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int BFUSB_MAX_BULK_RX ; 
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,struct bfusb_data*) ; 
 int FUNC1 (struct bfusb_data*,int /*<<< orphan*/ *) ; 
 struct bfusb_data* FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct hci_dev *hdev)
{
	struct bfusb_data *data = FUNC2(hdev);
	unsigned long flags;
	int i, err;

	FUNC0("hdev %p bfusb %p", hdev, data);

	FUNC3(&data->lock, flags);

	err = FUNC1(data, NULL);
	if (!err) {
		for (i = 1; i < BFUSB_MAX_BULK_RX; i++)
			FUNC1(data, NULL);
	}

	FUNC4(&data->lock, flags);

	return err;
}