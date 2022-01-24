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
struct firmware {int dummy; } ;
struct ath3k_version {int ref_clock; int /*<<< orphan*/  rom_version; } ;

/* Variables and functions */
 int ATH3K_NAME_LEN ; 
#define  ATH3K_XTAL_FREQ_19P2 130 
#define  ATH3K_XTAL_FREQ_26M 129 
#define  ATH3K_XTAL_FREQ_40M 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EBUSY ; 
 int FUNC1 (struct usb_device*,unsigned char*) ; 
 int FUNC2 (struct usb_device*,struct ath3k_version*) ; 
 int FUNC3 (struct usb_device*,struct firmware const*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*) ; 
 int FUNC6 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int,int,char*) ; 

__attribute__((used)) static int FUNC8(struct usb_device *udev)
{
	unsigned char fw_state;
	char filename[ATH3K_NAME_LEN];
	const struct firmware *firmware;
	struct ath3k_version fw_version;
	int clk_value, ret;

	ret = FUNC1(udev, &fw_state);
	if (ret < 0) {
		FUNC0("Can't get state to change to load configuration err");
		return -EBUSY;
	}

	ret = FUNC2(udev, &fw_version);
	if (ret < 0) {
		FUNC0("Can't get version to change to load ram patch err");
		return ret;
	}

	switch (fw_version.ref_clock) {

	case ATH3K_XTAL_FREQ_26M:
		clk_value = 26;
		break;
	case ATH3K_XTAL_FREQ_40M:
		clk_value = 40;
		break;
	case ATH3K_XTAL_FREQ_19P2:
		clk_value = 19;
		break;
	default:
		clk_value = 0;
		break;
	}

	FUNC7(filename, ATH3K_NAME_LEN, "ar3k/ramps_0x%08x_%d%s",
		FUNC4(fw_version.rom_version), clk_value, ".dfu");

	ret = FUNC6(&firmware, filename, &udev->dev);
	if (ret < 0) {
		FUNC0("Configuration file not found %s", filename);
		return ret;
	}

	ret = FUNC3(udev, firmware);
	FUNC5(firmware);

	return ret;
}