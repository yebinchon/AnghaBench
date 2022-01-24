#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct bt3c_info {TYPE_3__* hdev; int /*<<< orphan*/  tx_state; int /*<<< orphan*/  txq; TYPE_4__* p_dev; } ;
struct TYPE_8__ {TYPE_1__** resource; } ;
struct TYPE_6__ {int byte_tx; } ;
struct TYPE_7__ {TYPE_2__ stat; } ;
struct TYPE_5__ {unsigned int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  XMIT_SENDING ; 
 int FUNC1 (unsigned int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct bt3c_info *info)
{
	if (!info) {
		FUNC0("Unknown device");
		return;
	}

	if (FUNC6(XMIT_SENDING, &(info->tx_state)))
		return;

	do {
		unsigned int iobase = info->p_dev->resource[0]->start;
		register struct sk_buff *skb;
		int len;

		if (!FUNC4(info->p_dev))
			break;

		skb = FUNC5(&(info->txq));
		if (!skb) {
			FUNC2(XMIT_SENDING, &(info->tx_state));
			break;
		}

		/* Send frame */
		len = FUNC1(iobase, 256, skb->data, skb->len);

		if (len != skb->len)
			FUNC0("Very strange");

		FUNC3(skb);

		info->hdev->stat.byte_tx += len;

	} while (0);
}