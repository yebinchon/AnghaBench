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
struct qca_version {int /*<<< orphan*/  rom_version; } ;
struct qca_device_info {int /*<<< orphan*/  nvm_hdr; } ;
struct hci_dev {int /*<<< orphan*/  dev; } ;
struct firmware {int dummy; } ;
typedef  int /*<<< orphan*/  fwname ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,char*) ; 
 int FUNC2 (struct hci_dev*,struct firmware const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int FUNC5 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC7(struct hci_dev *hdev,
				    struct qca_version *ver,
				    const struct qca_device_info *info)
{
	const struct firmware *fw;
	char fwname[64];
	int err;

	FUNC6(fwname, sizeof(fwname), "qca/nvm_usb_%08x.bin",
		 FUNC3(ver->rom_version));

	err = FUNC5(&fw, fwname, &hdev->dev);
	if (err) {
		FUNC0(hdev, "failed to request NVM file: %s (%d)",
			   fwname, err);
		return err;
	}

	FUNC1(hdev, "using NVM file: %s", fwname);

	err = FUNC2(hdev, fw, info->nvm_hdr);

	FUNC4(fw);

	return err;
}