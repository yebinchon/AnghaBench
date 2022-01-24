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
struct urb {int /*<<< orphan*/  status; scalar_t__ context; } ;
struct sk_buff {scalar_t__ len; scalar_t__ dev; } ;
struct bfusb_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  completed_q; int /*<<< orphan*/  pending_q; TYPE_2__* hdev; int /*<<< orphan*/  pending_tx; } ;
struct TYPE_3__ {int /*<<< orphan*/  err_tx; int /*<<< orphan*/  byte_tx; } ;
struct TYPE_4__ {TYPE_1__ stat; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct bfusb_data*,struct urb*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bfusb_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct urb *urb)
{
	struct sk_buff *skb = (struct sk_buff *) urb->context;
	struct bfusb_data *data = (struct bfusb_data *) skb->dev;

	FUNC0("bfusb %p urb %p skb %p len %d", data, urb, skb, skb->len);

	FUNC1(&data->pending_tx);

	if (!FUNC7(HCI_RUNNING, &data->hdev->flags))
		return;

	if (!urb->status)
		data->hdev->stat.byte_tx += skb->len;
	else
		data->hdev->stat.err_tx++;

	FUNC3(&data->lock);

	FUNC6(skb, &data->pending_q);
	FUNC5(&data->completed_q, skb);

	FUNC2(data);

	FUNC4(&data->lock);
}