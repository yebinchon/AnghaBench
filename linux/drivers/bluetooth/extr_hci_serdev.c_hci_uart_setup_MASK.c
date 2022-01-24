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
struct sk_buff {int len; } ;
struct hci_uart {int init_speed; int oper_speed; int /*<<< orphan*/  hdev_flags; TYPE_1__* proto; int /*<<< orphan*/  serdev; } ;
struct hci_rp_read_local_version {int dummy; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int init_speed; int oper_speed; int (* set_baudrate ) (struct hci_uart*,unsigned int) ;int (* setup ) (struct hci_uart*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 int /*<<< orphan*/  HCI_OP_READ_LOCAL_VERSION ; 
 int /*<<< orphan*/  HCI_UART_VND_DETECT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,...) ; 
 struct hci_uart* FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC7 (struct hci_uart*,unsigned int) ; 
 int FUNC8 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct hci_dev *hdev)
{
	struct hci_uart *hu = FUNC4(hdev);
	struct hci_rp_read_local_version *ver;
	struct sk_buff *skb;
	unsigned int speed;
	int err;

	/* Init speed if any */
	if (hu->init_speed)
		speed = hu->init_speed;
	else if (hu->proto->init_speed)
		speed = hu->proto->init_speed;
	else
		speed = 0;

	if (speed)
		FUNC6(hu->serdev, speed);

	/* Operational speed if any */
	if (hu->oper_speed)
		speed = hu->oper_speed;
	else if (hu->proto->oper_speed)
		speed = hu->proto->oper_speed;
	else
		speed = 0;

	if (hu->proto->set_baudrate && speed) {
		err = hu->proto->set_baudrate(hu, speed);
		if (err)
			FUNC3(hdev, "Failed to set baudrate");
		else
			FUNC6(hu->serdev, speed);
	}

	if (hu->proto->setup)
		return hu->proto->setup(hu);

	if (!FUNC9(HCI_UART_VND_DETECT, &hu->hdev_flags))
		return 0;

	skb = FUNC2(hdev, HCI_OP_READ_LOCAL_VERSION, 0, NULL,
			     HCI_INIT_TIMEOUT);
	if (FUNC0(skb)) {
		FUNC3(hdev, "Reading local version info failed (%ld)",
			   FUNC1(skb));
		return 0;
	}

	if (skb->len != sizeof(*ver))
		FUNC3(hdev, "Event length mismatch for version info");

	FUNC5(skb);
	return 0;
}