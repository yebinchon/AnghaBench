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
typedef  int u32 ;
typedef  int u16 ;
struct qca_version {int /*<<< orphan*/  patch_version; int /*<<< orphan*/  rom_version; } ;
struct qca_rampatch_version {int /*<<< orphan*/  patch_version; int /*<<< orphan*/  rom_version; } ;
struct qca_device_info {int /*<<< orphan*/  rampatch_hdr; scalar_t__ ver_offset; } ;
struct hci_dev {int /*<<< orphan*/  dev; } ;
struct firmware {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  fwname ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,...) ; 
 int FUNC2 (struct hci_dev*,struct firmware const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*) ; 
 int FUNC6 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC8(struct hci_dev *hdev,
					 struct qca_version *ver,
					 const struct qca_device_info *info)
{
	struct qca_rampatch_version *rver;
	const struct firmware *fw;
	u32 ver_rom, ver_patch;
	u16 rver_rom, rver_patch;
	char fwname[64];
	int err;

	ver_rom = FUNC4(ver->rom_version);
	ver_patch = FUNC4(ver->patch_version);

	FUNC7(fwname, sizeof(fwname), "qca/rampatch_usb_%08x.bin", ver_rom);

	err = FUNC6(&fw, fwname, &hdev->dev);
	if (err) {
		FUNC0(hdev, "failed to request rampatch file: %s (%d)",
			   fwname, err);
		return err;
	}

	FUNC1(hdev, "using rampatch file: %s", fwname);

	rver = (struct qca_rampatch_version *)(fw->data + info->ver_offset);
	rver_rom = FUNC3(rver->rom_version);
	rver_patch = FUNC3(rver->patch_version);

	FUNC1(hdev, "QCA: patch rome 0x%x build 0x%x, "
		    "firmware rome 0x%x build 0x%x",
		    rver_rom, rver_patch, ver_rom, ver_patch);

	if (rver_rom != ver_rom || rver_patch <= ver_patch) {
		FUNC0(hdev, "rampatch file version did not match with firmware");
		err = -EINVAL;
		goto done;
	}

	err = FUNC2(hdev, fw, info->rampatch_hdr);

done:
	FUNC5(fw);

	return err;
}