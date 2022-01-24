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
struct dtl1_info {int /*<<< orphan*/  tx_state; TYPE_3__* hdev; int /*<<< orphan*/  txq; TYPE_4__* p_dev; } ;
struct TYPE_8__ {TYPE_1__** resource; } ;
struct TYPE_6__ {int byte_tx; } ;
struct TYPE_7__ {TYPE_2__ stat; } ;
struct TYPE_5__ {unsigned int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  XMIT_SENDING ; 
 int /*<<< orphan*/  XMIT_WAITING ; 
 int /*<<< orphan*/  XMIT_WAKEUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct dtl1_info *info)
{
	if (!info) {
		FUNC0("Unknown device");
		return;
	}

	if (FUNC10(XMIT_WAITING, &(info->tx_state))) {
		FUNC5(XMIT_WAKEUP, &(info->tx_state));
		return;
	}

	if (FUNC9(XMIT_SENDING, &(info->tx_state))) {
		FUNC5(XMIT_WAKEUP, &(info->tx_state));
		return;
	}

	do {
		unsigned int iobase = info->p_dev->resource[0]->start;
		register struct sk_buff *skb;
		int len;

		FUNC1(XMIT_WAKEUP, &(info->tx_state));

		if (!FUNC4(info->p_dev))
			return;

		skb = FUNC6(&(info->txq));
		if (!skb)
			break;

		/* Send frame */
		len = FUNC2(iobase, 32, skb->data, skb->len);

		if (len == skb->len) {
			FUNC5(XMIT_WAITING, &(info->tx_state));
			FUNC3(skb);
		} else {
			FUNC7(skb, len);
			FUNC8(&(info->txq), skb);
		}

		info->hdev->stat.byte_tx += len;

	} while (FUNC10(XMIT_WAKEUP, &(info->tx_state)));

	FUNC1(XMIT_SENDING, &(info->tx_state));
}