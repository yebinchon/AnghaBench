#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hci_dev {int /*<<< orphan*/  set_bdaddr; int /*<<< orphan*/  setup; int /*<<< orphan*/  send; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  bus; } ;
struct btqcomsmd {struct hci_dev* hdev; void* cmd_channel; void* acl_channel; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_SMD ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,TYPE_1__*) ; 
 int /*<<< orphan*/  btqcomsmd_acl_callback ; 
 int /*<<< orphan*/  btqcomsmd_close ; 
 int /*<<< orphan*/  btqcomsmd_cmd_callback ; 
 int /*<<< orphan*/  btqcomsmd_open ; 
 int /*<<< orphan*/  btqcomsmd_send ; 
 int /*<<< orphan*/  btqcomsmd_setup ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 struct btqcomsmd* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct hci_dev* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,struct btqcomsmd*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct btqcomsmd*) ; 
 int /*<<< orphan*/  qca_set_bdaddr_rome ; 
 void* FUNC10 (void*,char*,int /*<<< orphan*/ ,struct btqcomsmd*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct btqcomsmd *btq;
	struct hci_dev *hdev;
	void *wcnss;
	int ret;

	btq = FUNC4(&pdev->dev, sizeof(*btq), GFP_KERNEL);
	if (!btq)
		return -ENOMEM;

	wcnss = FUNC3(pdev->dev.parent);

	btq->acl_channel = FUNC10(wcnss, "APPS_RIVA_BT_ACL",
						   btqcomsmd_acl_callback, btq);
	if (FUNC0(btq->acl_channel))
		return FUNC1(btq->acl_channel);

	btq->cmd_channel = FUNC10(wcnss, "APPS_RIVA_BT_CMD",
						   btqcomsmd_cmd_callback, btq);
	if (FUNC0(btq->cmd_channel))
		return FUNC1(btq->cmd_channel);

	hdev = FUNC5();
	if (!hdev)
		return -ENOMEM;

	FUNC8(hdev, btq);
	btq->hdev = hdev;
	FUNC2(hdev, &pdev->dev);

	hdev->bus = HCI_SMD;
	hdev->open = btqcomsmd_open;
	hdev->close = btqcomsmd_close;
	hdev->send = btqcomsmd_send;
	hdev->setup = btqcomsmd_setup;
	hdev->set_bdaddr = qca_set_bdaddr_rome;

	ret = FUNC7(hdev);
	if (ret < 0) {
		FUNC6(hdev);
		return ret;
	}

	FUNC9(pdev, btq);

	return 0;
}