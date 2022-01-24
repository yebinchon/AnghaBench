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
struct sk_buff {int* data; int len; } ;
struct intel_data {int /*<<< orphan*/  flags; } ;
struct hci_uart {struct intel_data* priv; } ;
struct hci_event_hdr {int evt; int plen; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_BOOTING ; 
 int /*<<< orphan*/  STATE_BOOTLOADER ; 
 int /*<<< orphan*/  STATE_DOWNLOADING ; 
 int /*<<< orphan*/  STATE_FIRMWARE_FAILED ; 
 int /*<<< orphan*/  STATE_FIRMWARE_LOADED ; 
 struct hci_uart* FUNC0 (struct hci_dev*) ; 
 int FUNC1 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_uart *hu = FUNC0(hdev);
	struct intel_data *intel = hu->priv;
	struct hci_event_hdr *hdr;

	if (!FUNC4(STATE_BOOTLOADER, &intel->flags) &&
	    !FUNC4(STATE_BOOTING, &intel->flags))
		goto recv;

	hdr = (void *)skb->data;

	/* When the firmware loading completes the device sends
	 * out a vendor specific event indicating the result of
	 * the firmware loading.
	 */
	if (skb->len == 7 && hdr->evt == 0xff && hdr->plen == 0x05 &&
	    skb->data[2] == 0x06) {
		if (skb->data[3] != 0x00)
			FUNC2(STATE_FIRMWARE_FAILED, &intel->flags);

		if (FUNC3(STATE_DOWNLOADING, &intel->flags) &&
		    FUNC4(STATE_FIRMWARE_LOADED, &intel->flags))
			FUNC5(&intel->flags, STATE_DOWNLOADING);

	/* When switching to the operational firmware the device
	 * sends a vendor specific event indicating that the bootup
	 * completed.
	 */
	} else if (skb->len == 9 && hdr->evt == 0xff && hdr->plen == 0x07 &&
		   skb->data[2] == 0x02) {
		if (FUNC3(STATE_BOOTING, &intel->flags))
			FUNC5(&intel->flags, STATE_BOOTING);
	}
recv:
	return FUNC1(hdev, skb);
}