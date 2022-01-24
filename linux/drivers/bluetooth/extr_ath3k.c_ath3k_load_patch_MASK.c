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
struct usb_device {int /*<<< orphan*/  dev; } ;
struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct ath3k_version {int /*<<< orphan*/  build_version; int /*<<< orphan*/  rom_version; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int ATH3K_NAME_LEN ; 
 unsigned char ATH3K_PATCH_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 int FUNC2 (struct usb_device*,unsigned char*) ; 
 int FUNC3 (struct usb_device*,struct ath3k_version*) ; 
 int FUNC4 (struct usb_device*,struct firmware const*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 int FUNC8 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct usb_device *udev)
{
	unsigned char fw_state;
	char filename[ATH3K_NAME_LEN];
	const struct firmware *firmware;
	struct ath3k_version fw_version;
	__u32 pt_rom_version, pt_build_version;
	int ret;

	ret = FUNC2(udev, &fw_state);
	if (ret < 0) {
		FUNC1("Can't get state to change to load ram patch err");
		return ret;
	}

	if (fw_state & ATH3K_PATCH_UPDATE) {
		FUNC0("Patch was already downloaded");
		return 0;
	}

	ret = FUNC3(udev, &fw_version);
	if (ret < 0) {
		FUNC1("Can't get version to change to load ram patch err");
		return ret;
	}

	FUNC9(filename, ATH3K_NAME_LEN, "ar3k/AthrBT_0x%08x.dfu",
		 FUNC6(fw_version.rom_version));

	ret = FUNC8(&firmware, filename, &udev->dev);
	if (ret < 0) {
		FUNC1("Patch file not found %s", filename);
		return ret;
	}

	pt_rom_version = FUNC5(firmware->data +
					    firmware->size - 8);
	pt_build_version = FUNC5(firmware->data +
					      firmware->size - 4);

	if (pt_rom_version != FUNC6(fw_version.rom_version) ||
	    pt_build_version <= FUNC6(fw_version.build_version)) {
		FUNC1("Patch file version did not match with firmware");
		FUNC7(firmware);
		return -EINVAL;
	}

	ret = FUNC4(udev, firmware);
	FUNC7(firmware);

	return ret;
}