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
struct qca_serdev {TYPE_1__* bt_power; } ;
struct hci_uart {int /*<<< orphan*/  hdev; int /*<<< orphan*/  serdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  vregs_on; } ;

/* Variables and functions */
 int /*<<< orphan*/  QCA_INIT_SPEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_uart*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*,int) ; 
 int FUNC3 (struct hci_uart*,int) ; 
 int FUNC4 (struct hci_uart*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_uart*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct qca_serdev* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct hci_uart *hu)
{
	struct qca_serdev *qcadev;
	int ret;

	/* Check for vregs status, may be hci down has turned
	 * off the voltage regulator.
	 */
	qcadev = FUNC7(hu->serdev);
	if (!qcadev->bt_power->vregs_on) {
		FUNC6(hu->serdev);
		ret = FUNC3(hu, true);
		if (ret)
			return ret;

		ret = FUNC8(hu->serdev);
		if (ret) {
			FUNC0(hu->hdev, "failed to open port");
			return ret;
		}
	}

	/* Forcefully enable wcn3990 to enter in to boot mode. */
	FUNC2(hu, 2400);
	ret = FUNC4(hu, false);
	if (ret)
		return ret;

	FUNC5(hu, QCA_INIT_SPEED);
	ret = FUNC4(hu, true);
	if (ret)
		return ret;

	/* Now the device is in ready state to communicate with host.
	 * To sync host with device we need to reopen port.
	 * Without this, we will have RTS and CTS synchronization
	 * issues.
	 */
	FUNC6(hu->serdev);
	ret = FUNC8(hu->serdev);
	if (ret) {
		FUNC0(hu->hdev, "failed to open port");
		return ret;
	}

	FUNC1(hu, false);

	return 0;
}