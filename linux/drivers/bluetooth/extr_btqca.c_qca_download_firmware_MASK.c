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
typedef  int /*<<< orphan*/  u8 ;
struct rome_config {scalar_t__ dnld_type; int /*<<< orphan*/  dnld_mode; int /*<<< orphan*/  fwname; } ;
struct hci_dev {int /*<<< orphan*/  dev; } ;
struct firmware {int size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int MAX_SIZE_PER_TLV_SEGMENT ; 
 int /*<<< orphan*/  ROME_SKIP_EVT_NONE ; 
 scalar_t__ ROME_SKIP_EVT_VSE ; 
 scalar_t__ ROME_SKIP_EVT_VSE_CC ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rome_config*,struct firmware const*) ; 
 int FUNC6 (struct hci_dev*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 int FUNC8 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct hci_dev *hdev,
				  struct rome_config *config)
{
	const struct firmware *fw;
	const u8 *segment;
	int ret, remain, i = 0;

	FUNC2(hdev, "QCA Downloading %s", config->fwname);

	ret = FUNC8(&fw, config->fwname, &hdev->dev);
	if (ret) {
		FUNC1(hdev, "QCA Failed to request file: %s (%d)",
			   config->fwname, ret);
		return ret;
	}

	FUNC5(config, fw);

	segment = fw->data;
	remain = fw->size;
	while (remain > 0) {
		int segsize = FUNC3(MAX_SIZE_PER_TLV_SEGMENT, remain);

		FUNC0(hdev, "Send segment %d, size %d", i++, segsize);

		remain -= segsize;
		/* The last segment is always acked regardless download mode */
		if (!remain || segsize < MAX_SIZE_PER_TLV_SEGMENT)
			config->dnld_mode = ROME_SKIP_EVT_NONE;

		ret = FUNC6(hdev, segsize, segment,
					    config->dnld_mode);
		if (ret)
			goto out;

		segment += segsize;
	}

	/* Latest qualcomm chipsets are not sending a command complete event
	 * for every fw packet sent. They only respond with a vendor specific
	 * event for the last packet. This optimization in the chip will
	 * decrease the BT in initialization time. Here we will inject a command
	 * complete event to avoid a command timeout error message.
	 */
	if (config->dnld_type == ROME_SKIP_EVT_VSE_CC ||
	    config->dnld_type == ROME_SKIP_EVT_VSE)
		ret = FUNC4(hdev);

out:
	FUNC7(fw);

	return ret;
}