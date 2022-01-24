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
struct qca_data {int /*<<< orphan*/  flags; } ;
struct hci_uart {struct hci_dev* hdev; struct qca_data* priv; } ;
struct hci_dev {int /*<<< orphan*/  set_bdaddr; int /*<<< orphan*/  shutdown; int /*<<< orphan*/  quirks; } ;
typedef  enum qca_btsoc_type { ____Placeholder_qca_btsoc_type } qca_btsoc_type ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOENT ; 
 int /*<<< orphan*/  HCI_QUIRK_NON_PERSISTENT_SETUP ; 
 int /*<<< orphan*/  HCI_QUIRK_SIMULTANEOUS_DISCOVERY ; 
 int /*<<< orphan*/  HCI_QUIRK_USE_BDADDR_PROPERTY ; 
 unsigned int QCA_BAUDRATE_115200 ; 
 int /*<<< orphan*/  QCA_IBS_ENABLED ; 
 int /*<<< orphan*/  QCA_INIT_SPEED ; 
 int /*<<< orphan*/  QCA_OPER_SPEED ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 unsigned int FUNC4 (unsigned int) ; 
 char* FUNC5 (struct hci_uart*) ; 
 unsigned int FUNC6 (struct hci_uart*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  qca_power_off ; 
 int FUNC8 (struct hci_dev*,int*) ; 
 int /*<<< orphan*/  qca_set_bdaddr ; 
 int /*<<< orphan*/  qca_set_bdaddr_rome ; 
 int FUNC9 (struct hci_uart*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct hci_uart*) ; 
 int FUNC11 (struct hci_dev*,unsigned int,int,int,char const*) ; 
 int FUNC12 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct hci_uart *hu)
{
	struct hci_dev *hdev = hu->hdev;
	struct qca_data *qca = hu->priv;
	unsigned int speed, qca_baudrate = QCA_BAUDRATE_115200;
	enum qca_btsoc_type soc_type = FUNC10(hu);
	const char *firmware_name = FUNC5(hu);
	int ret;
	int soc_ver = 0;

	ret = FUNC2(hu);
	if (ret)
		return ret;

	/* Patch downloading has to be done without IBS mode */
	FUNC1(QCA_IBS_ENABLED, &qca->flags);

	/* Enable controller to do both LE scan and BR/EDR inquiry
	 * simultaneously.
	 */
	FUNC13(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks);

	if (FUNC7(soc_type)) {
		FUNC0(hdev, "setting up wcn3990");

		/* Enable NON_PERSISTENT_SETUP QUIRK to ensure to execute
		 * setup for every hci up.
		 */
		FUNC13(HCI_QUIRK_NON_PERSISTENT_SETUP, &hdev->quirks);
		FUNC13(HCI_QUIRK_USE_BDADDR_PROPERTY, &hdev->quirks);
		hu->hdev->shutdown = qca_power_off;
		ret = FUNC12(hu);
		if (ret)
			return ret;

		ret = FUNC8(hdev, &soc_ver);
		if (ret)
			return ret;
	} else {
		FUNC0(hdev, "ROME setup");
		FUNC9(hu, QCA_INIT_SPEED);
	}

	/* Setup user speed if needed */
	speed = FUNC6(hu, QCA_OPER_SPEED);
	if (speed) {
		ret = FUNC9(hu, QCA_OPER_SPEED);
		if (ret)
			return ret;

		qca_baudrate = FUNC4(speed);
	}

	if (!FUNC7(soc_type)) {
		/* Get QCA version information */
		ret = FUNC8(hdev, &soc_ver);
		if (ret)
			return ret;
	}

	FUNC0(hdev, "QCA controller version 0x%08x", soc_ver);
	/* Setup patch / NVM configurations */
	ret = FUNC11(hdev, qca_baudrate, soc_type, soc_ver,
			firmware_name);
	if (!ret) {
		FUNC13(QCA_IBS_ENABLED, &qca->flags);
		FUNC3(hdev);
	} else if (ret == -ENOENT) {
		/* No patch/nvm-config found, run with original fw/config */
		ret = 0;
	} else if (ret == -EAGAIN) {
		/*
		 * Userspace firmware loader will return -EAGAIN in case no
		 * patch/nvm-config is found, so run with original fw/config.
		 */
		ret = 0;
	}

	/* Setup bdaddr */
	if (FUNC7(soc_type))
		hu->hdev->set_bdaddr = qca_set_bdaddr;
	else
		hu->hdev->set_bdaddr = qca_set_bdaddr_rome;

	return ret;
}