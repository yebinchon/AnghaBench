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
struct rtl_vendor_config_entry {int len; int* data; int /*<<< orphan*/  offset; } ;
struct rtl_vendor_config {scalar_t__ entry; int /*<<< orphan*/  total_len; int /*<<< orphan*/  signature; } ;
struct hci_dev {int dummy; } ;
struct btrtl_device_info {int cfg_len; scalar_t__ cfg_data; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ RTL_CONFIG_MAGIC ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,char*) ; 

int FUNC8(struct hci_dev *hdev,
			    struct btrtl_device_info *btrtl_dev,
			    unsigned int *controller_baudrate,
			    u32 *device_baudrate, bool *flow_control)
{
	struct rtl_vendor_config *config;
	struct rtl_vendor_config_entry *entry;
	int i, total_data_len;
	bool found = false;

	total_data_len = btrtl_dev->cfg_len - sizeof(*config);
	if (total_data_len <= 0) {
		FUNC7(hdev, "no config loaded");
		return -EINVAL;
	}

	config = (struct rtl_vendor_config *)btrtl_dev->cfg_data;
	if (FUNC4(config->signature) != RTL_CONFIG_MAGIC) {
		FUNC6(hdev, "invalid config magic");
		return -EINVAL;
	}

	if (total_data_len < FUNC3(config->total_len)) {
		FUNC6(hdev, "config is too short");
		return -EINVAL;
	}

	for (i = 0; i < total_data_len; ) {
		entry = ((void *)config->entry) + i;

		switch (FUNC3(entry->offset)) {
		case 0xc:
			if (entry->len < sizeof(*device_baudrate)) {
				FUNC6(hdev, "invalid UART config entry");
				return -EINVAL;
			}

			*device_baudrate = FUNC2(entry->data);
			*controller_baudrate = FUNC1(
							*device_baudrate);

			if (entry->len >= 13)
				*flow_control = !!(entry->data[12] & FUNC0(2));
			else
				*flow_control = false;

			found = true;
			break;

		default:
			FUNC5(hdev, "skipping config entry 0x%x (len %u)",
				   FUNC3(entry->offset), entry->len);
			break;
		};

		i += sizeof(*entry) + entry->len;
	}

	if (!found) {
		FUNC6(hdev, "no UART config entry found");
		return -ENOENT;
	}

	FUNC5(hdev, "device baudrate = 0x%08x", *device_baudrate);
	FUNC5(hdev, "controller baudrate = %u", *controller_baudrate);
	FUNC5(hdev, "flow control %d", *flow_control);

	return 0;
}