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
struct intel_version {int hw_platform; int hw_variant; int hw_revision; int fw_variant; int fw_revision; int fw_build_num; int fw_build_ww; int fw_build_yy; } ;
struct hci_dev {int /*<<< orphan*/  dev; } ;
struct firmware {int dummy; } ;
typedef  int /*<<< orphan*/  fwname ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,char*) ; 
 int FUNC2 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,int,...) ; 

__attribute__((used)) static const struct firmware *FUNC4(struct hci_dev *hdev,
						       struct intel_version *ver)
{
	const struct firmware *fw;
	char fwname[64];
	int ret;

	FUNC3(fwname, sizeof(fwname),
		 "intel/ibt-hw-%x.%x.%x-fw-%x.%x.%x.%x.%x.bseq",
		 ver->hw_platform, ver->hw_variant, ver->hw_revision,
		 ver->fw_variant,  ver->fw_revision, ver->fw_build_num,
		 ver->fw_build_ww, ver->fw_build_yy);

	ret = FUNC2(&fw, fwname, &hdev->dev);
	if (ret < 0) {
		if (ret == -EINVAL) {
			FUNC0(hdev, "Intel firmware file request failed (%d)",
				   ret);
			return NULL;
		}

		FUNC0(hdev, "failed to open Intel firmware file: %s (%d)",
			   fwname, ret);

		/* If the correct firmware patch file is not found, use the
		 * default firmware patch file instead
		 */
		FUNC3(fwname, sizeof(fwname), "intel/ibt-hw-%x.%x.bseq",
			 ver->hw_platform, ver->hw_variant);
		if (FUNC2(&fw, fwname, &hdev->dev) < 0) {
			FUNC0(hdev, "failed to open default fw file: %s",
				   fwname);
			return NULL;
		}
	}

	FUNC1(hdev, "Intel Bluetooth firmware file: %s", fwname);

	return fw;
}