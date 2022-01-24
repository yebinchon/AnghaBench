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
struct sk_buff {int dummy; } ;
struct hci_uart {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct bcm_write_uart_clock_setting {unsigned int type; int /*<<< orphan*/  baud_rate; int /*<<< orphan*/  zero; } ;
struct bcm_update_uart_baud_rate {unsigned int type; int /*<<< orphan*/  baud_rate; int /*<<< orphan*/  zero; } ;
typedef  int /*<<< orphan*/  param ;

/* Variables and functions */
 unsigned int BCM_UART_CLOCK_48MHZ ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int,int,struct bcm_write_uart_clock_setting*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct hci_uart *hu, unsigned int speed)
{
	struct hci_dev *hdev = hu->hdev;
	struct sk_buff *skb;
	struct bcm_update_uart_baud_rate param;

	if (speed > 3000000) {
		struct bcm_write_uart_clock_setting clock;

		clock.type = BCM_UART_CLOCK_48MHZ;

		FUNC3(hdev, "Set Controller clock (%d)", clock.type);

		/* This Broadcom specific command changes the UART's controller
		 * clock for baud rate > 3000000.
		 */
		skb = FUNC2(hdev, 0xfc45, 1, &clock, HCI_INIT_TIMEOUT);
		if (FUNC0(skb)) {
			int err = FUNC1(skb);
			FUNC4(hdev, "BCM: failed to write clock (%d)",
				   err);
			return err;
		}

		FUNC7(skb);
	}

	FUNC3(hdev, "Set Controller UART speed to %d bit/s", speed);

	param.zero = FUNC5(0);
	param.baud_rate = FUNC6(speed);

	/* This Broadcom specific command changes the UART's controller baud
	 * rate.
	 */
	skb = FUNC2(hdev, 0xfc18, sizeof(param), &param,
			     HCI_INIT_TIMEOUT);
	if (FUNC0(skb)) {
		int err = FUNC1(skb);
		FUNC4(hdev, "BCM: failed to write update baudrate (%d)",
			   err);
		return err;
	}

	FUNC7(skb);

	return 0;
}