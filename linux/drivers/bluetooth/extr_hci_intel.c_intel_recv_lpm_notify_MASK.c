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
struct intel_data {int /*<<< orphan*/  flags; int /*<<< orphan*/  busy_work; } ;
struct hci_uart {struct intel_data* priv; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_TX_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_uart* FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hci_dev *hdev, int value)
{
	struct hci_uart *hu = FUNC2(hdev);
	struct intel_data *intel = hu->priv;

	FUNC0(hdev, "TX idle notification (%d)", value);

	if (value) {
		FUNC4(STATE_TX_ACTIVE, &intel->flags);
		FUNC3(&intel->busy_work);
	} else {
		FUNC1(STATE_TX_ACTIVE, &intel->flags);
	}
}