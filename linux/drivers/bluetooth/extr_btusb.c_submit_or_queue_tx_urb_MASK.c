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
struct urb {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btusb_data {int /*<<< orphan*/  waker; int /*<<< orphan*/  deferred; int /*<<< orphan*/  txlock; int /*<<< orphan*/  tx_in_flight; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTUSB_SUSPENDING ; 
 struct btusb_data* FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct hci_dev*,struct urb*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 

__attribute__((used)) static int FUNC8(struct hci_dev *hdev, struct urb *urb)
{
	struct btusb_data *data = FUNC0(hdev);
	unsigned long flags;
	bool suspending;

	FUNC2(&data->txlock, flags);
	suspending = FUNC5(BTUSB_SUSPENDING, &data->flags);
	if (!suspending)
		data->tx_in_flight++;
	FUNC3(&data->txlock, flags);

	if (!suspending)
		return FUNC4(hdev, urb);

	FUNC6(urb, &data->deferred);
	FUNC1(&data->waker);

	FUNC7(urb);
	return 0;
}