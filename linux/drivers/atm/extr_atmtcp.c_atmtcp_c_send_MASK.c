#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct atmtcp_hdr {scalar_t__ length; int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; } ;
struct atmtcp_control {int dummy; } ;
struct atm_vcc {int /*<<< orphan*/  (* pop ) (struct atm_vcc*,struct sk_buff*) ;TYPE_1__* stats; int /*<<< orphan*/  (* push ) (struct atm_vcc*,struct sk_buff*) ;struct atm_dev* dev_data; } ;
struct atm_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; int /*<<< orphan*/  tx_err; } ;

/* Variables and functions */
 scalar_t__ ATMTCP_HDR_MAGIC ; 
 int ENOBUFS ; 
 int EUNATCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct atm_vcc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct atmtcp_control*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct atm_vcc* FUNC5 (struct atm_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  vcc_sklist_lock ; 

__attribute__((used)) static int FUNC14(struct atm_vcc *vcc,struct sk_buff *skb)
{
	struct atm_dev *dev;
	struct atmtcp_hdr *hdr;
	struct atm_vcc *out_vcc;
	struct sk_buff *new_skb;
	int result = 0;

	if (!skb->len) return 0;
	dev = vcc->dev_data;
	hdr = (struct atmtcp_hdr *) skb->data;
	if (hdr->length == ATMTCP_HDR_MAGIC) {
		result = FUNC2(
		    (struct atmtcp_control *) skb->data);
		goto done;
	}
	FUNC7(&vcc_sklist_lock);
	out_vcc = FUNC5(dev, FUNC6(hdr->vpi), FUNC6(hdr->vci));
	FUNC8(&vcc_sklist_lock);
	if (!out_vcc) {
		result = -EUNATCH;
		FUNC3(&vcc->stats->tx_err);
		goto done;
	}
	FUNC10(skb,sizeof(struct atmtcp_hdr));
	new_skb = FUNC1(out_vcc,skb->len,GFP_KERNEL);
	if (!new_skb) {
		result = -ENOBUFS;
		goto done;
	}
	FUNC0(new_skb);
	FUNC9(skb, FUNC11(new_skb, skb->len), skb->len);
	out_vcc->push(out_vcc,new_skb);
	FUNC3(&vcc->stats->tx);
	FUNC3(&out_vcc->stats->rx);
done:
	if (vcc->pop) vcc->pop(vcc,skb);
	else FUNC4(skb);
	return result;
}