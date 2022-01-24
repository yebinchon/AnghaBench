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
struct hci_uart {int /*<<< orphan*/  serdev; int /*<<< orphan*/  hdev; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TRANS_TIMEOUT_MS ; 
 int /*<<< orphan*/  QCA_WCN3990_POWEROFF_PULSE ; 
 int /*<<< orphan*/  QCA_WCN3990_POWERON_PULSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hci_uart *hu, bool on)
{
	int ret;
	int timeout = FUNC3(CMD_TRANS_TIMEOUT_MS);
	u8 cmd = on ? QCA_WCN3990_POWERON_PULSE : QCA_WCN3990_POWEROFF_PULSE;

	/* These power pulses are single byte command which are sent
	 * at required baudrate to wcn3990. On wcn3990, we have an external
	 * circuit at Tx pin which decodes the pulse sent at specific baudrate.
	 * For example, wcn3990 supports RF COEX antenna for both Wi-Fi/BT
	 * and also we use the same power inputs to turn on and off for
	 * Wi-Fi/BT. Powering up the power sources will not enable BT, until
	 * we send a power on pulse at 115200 bps. This algorithm will help to
	 * save power. Disabling hardware flow control is mandatory while
	 * sending power pulses to SoC.
	 */
	FUNC0(hu->hdev, "sending power pulse %02x to controller", cmd);

	FUNC7(hu->serdev);
	FUNC2(hu, true);
	ret = FUNC6(hu->serdev, &cmd, sizeof(cmd));
	if (ret < 0) {
		FUNC1(hu->hdev, "failed to send power pulse %02x", cmd);
		return ret;
	}

	FUNC5(hu->serdev, timeout);
	FUNC2(hu, false);

	/* Give to controller time to boot/shutdown */
	if (on)
		FUNC4(100);
	else
		FUNC4(10);

	return 0;
}