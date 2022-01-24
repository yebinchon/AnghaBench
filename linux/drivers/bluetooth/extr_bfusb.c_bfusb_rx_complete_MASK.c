#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb {unsigned char* transfer_buffer; int actual_length; int /*<<< orphan*/  dev; scalar_t__ status; scalar_t__ context; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ dev; } ;
struct bfusb_data {int /*<<< orphan*/  lock; TYPE_2__* hdev; int /*<<< orphan*/  udev; int /*<<< orphan*/  pending_q; } ;
struct TYPE_3__ {int byte_rx; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; TYPE_1__ stat; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct bfusb_data*,struct urb*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct bfusb_data*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfusb_data*,struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct urb *urb)
{
	struct sk_buff *skb = (struct sk_buff *) urb->context;
	struct bfusb_data *data = (struct bfusb_data *) skb->dev;
	unsigned char *buf = urb->transfer_buffer;
	int count = urb->actual_length;
	int err, hdr, len;

	FUNC0("bfusb %p urb %p skb %p len %d", data, urb, skb, skb->len);

	FUNC5(&data->lock);

	if (!FUNC9(HCI_RUNNING, &data->hdev->flags))
		goto unlock;

	if (urb->status || !count)
		goto resubmit;

	data->hdev->stat.byte_rx += count;

	FUNC7(skb, count);

	while (count) {
		hdr = buf[0] | (buf[1] << 8);

		if (hdr & 0x4000) {
			len = 0;
			count -= 2;
			buf   += 2;
		} else {
			len = (buf[2] == 0) ? 256 : buf[2];
			count -= 3;
			buf   += 3;
		}

		if (count < len) {
			FUNC1("%s block extends over URB buffer ranges",
					data->hdev->name);
		}

		if ((hdr & 0xe1) == 0xc1)
			FUNC2(data, hdr, buf, len);

		count -= len;
		buf   += len;
	}

	FUNC8(skb, &data->pending_q);
	FUNC4(skb);

	FUNC3(data, urb);

	FUNC6(&data->lock);

	return;

resubmit:
	urb->dev = data->udev;

	err = FUNC10(urb, GFP_ATOMIC);
	if (err) {
		FUNC1("%s bulk resubmit failed urb %p err %d",
					data->hdev->name, urb, err);
	}

unlock:
	FUNC6(&data->lock);
}