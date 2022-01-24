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
typedef  unsigned char u8 ;
struct hci_dev {int dummy; } ;
struct btrtl_device_info {int cfg_len; unsigned char* cfg_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,int,int) ; 
 int FUNC4 (struct hci_dev*,unsigned char*,int) ; 
 int FUNC5 (struct hci_dev*,struct btrtl_device_info*,unsigned char**) ; 

__attribute__((used)) static int FUNC6(struct hci_dev *hdev,
				struct btrtl_device_info *btrtl_dev)
{
	unsigned char *fw_data = NULL;
	int ret;
	u8 *tbuff;

	ret = FUNC5(hdev, btrtl_dev, &fw_data);
	if (ret < 0)
		goto out;

	if (btrtl_dev->cfg_len > 0) {
		tbuff = FUNC1(ret + btrtl_dev->cfg_len, GFP_KERNEL);
		if (!tbuff) {
			ret = -ENOMEM;
			goto out;
		}

		FUNC2(tbuff, fw_data, ret);
		FUNC0(fw_data);

		FUNC2(tbuff + ret, btrtl_dev->cfg_data, btrtl_dev->cfg_len);
		ret += btrtl_dev->cfg_len;

		fw_data = tbuff;
	}

	FUNC3(hdev, "cfg_sz %d, total sz %d", btrtl_dev->cfg_len, ret);

	ret = FUNC4(hdev, fw_data, ret);

out:
	FUNC0(fw_data);
	return ret;
}