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
struct sk_buff {int len; scalar_t__ data; } ;
struct hci_uart {int init_speed; int oper_speed; int /*<<< orphan*/  hdev_flags; TYPE_1__* proto; } ;
struct hci_rp_read_local_version {int /*<<< orphan*/  manufacturer; } ;
struct hci_dev {int /*<<< orphan*/  set_bdaddr; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int init_speed; int oper_speed; int (* set_baudrate ) (struct hci_uart*,unsigned int) ;int (* setup ) (struct hci_uart*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 int /*<<< orphan*/  HCI_OP_READ_LOCAL_VERSION ; 
 int /*<<< orphan*/  HCI_UART_VND_DETECT ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  btbcm_set_bdaddr ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  btintel_set_bdaddr ; 
 struct hci_uart* FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_uart*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct hci_uart*,unsigned int) ; 
 int FUNC11 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct hci_dev *hdev)
{
	struct hci_uart *hu = FUNC6(hdev);
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
		FUNC7(hu, speed);

	/* Operational speed if any */
	if (hu->oper_speed)
		speed = hu->oper_speed;
	else if (hu->proto->oper_speed)
		speed = hu->proto->oper_speed;
	else
		speed = 0;

	if (hu->proto->set_baudrate && speed) {
		err = hu->proto->set_baudrate(hu, speed);
		if (!err)
			FUNC7(hu, speed);
	}

	if (hu->proto->setup)
		return hu->proto->setup(hu);

	if (!FUNC12(HCI_UART_VND_DETECT, &hu->hdev_flags))
		return 0;

	skb = FUNC3(hdev, HCI_OP_READ_LOCAL_VERSION, 0, NULL,
			     HCI_INIT_TIMEOUT);
	if (FUNC1(skb)) {
		FUNC0("%s: Reading local version information failed (%ld)",
		       hdev->name, FUNC2(skb));
		return 0;
	}

	if (skb->len != sizeof(*ver)) {
		FUNC0("%s: Event length mismatch for version information",
		       hdev->name);
		goto done;
	}

	ver = (struct hci_rp_read_local_version *)skb->data;

	switch (FUNC9(ver->manufacturer)) {
#ifdef CONFIG_BT_HCIUART_INTEL
	case 2:
		hdev->set_bdaddr = btintel_set_bdaddr;
		btintel_check_bdaddr(hdev);
		break;
#endif
#ifdef CONFIG_BT_HCIUART_BCM
	case 15:
		hdev->set_bdaddr = btbcm_set_bdaddr;
		btbcm_check_bdaddr(hdev);
		break;
#endif
	default:
		break;
	}

done:
	FUNC8(skb);
	return 0;
}