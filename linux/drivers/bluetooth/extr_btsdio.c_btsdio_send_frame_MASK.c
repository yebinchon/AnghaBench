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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sco_tx; int /*<<< orphan*/  acl_tx; int /*<<< orphan*/  cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; int /*<<< orphan*/  name; } ;
struct btsdio_data {int /*<<< orphan*/  work; int /*<<< orphan*/  txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EILSEQ ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
#define  HCI_SCODATA_PKT 128 
 struct btsdio_data* FUNC1 (struct hci_dev*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct btsdio_data *data = FUNC1(hdev);

	FUNC0("%s", hdev->name);

	switch (FUNC2(skb)) {
	case HCI_COMMAND_PKT:
		hdev->stat.cmd_tx++;
		break;

	case HCI_ACLDATA_PKT:
		hdev->stat.acl_tx++;
		break;

	case HCI_SCODATA_PKT:
		hdev->stat.sco_tx++;
		break;

	default:
		return -EILSEQ;
	}

	FUNC4(&data->txq, skb);

	FUNC3(&data->work);

	return 0;
}