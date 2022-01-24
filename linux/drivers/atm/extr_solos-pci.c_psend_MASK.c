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
struct solos_card {TYPE_1__* dev; } ;
struct sk_buff {int len; } ;
struct pkt_hdr {void* type; void* vci; void* vpi; void* size; } ;
struct atm_vcc {int vpi; int vci; TYPE_2__* dev; } ;
struct TYPE_4__ {struct solos_card* dev_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BUF_SIZE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PKT_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct solos_card*,int /*<<< orphan*/ ,struct sk_buff*,struct atm_vcc*) ; 
 int FUNC4 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int FUNC6 (struct sk_buff*) ; 
 struct pkt_hdr* FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct atm_vcc*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct atm_vcc *vcc, struct sk_buff *skb)
{
	struct solos_card *card = vcc->dev->dev_data;
	struct pkt_hdr *header;
	int pktlen;

	pktlen = skb->len;
	if (pktlen > (BUF_SIZE - sizeof(*header))) {
		FUNC2(&card->dev->dev, "Length of PDU is too large. Dropping PDU.\n");
		FUNC8(vcc, skb);
		return 0;
	}

	if (!FUNC5(skb, sizeof(*header))) {
		int expand_by = 0;
		int ret;

		if (FUNC6(skb) < sizeof(*header))
			expand_by = sizeof(*header) - FUNC6(skb);

		ret = FUNC4(skb, expand_by, 0, GFP_ATOMIC);
		if (ret) {
			FUNC2(&card->dev->dev, "pskb_expand_head failed.\n");
			FUNC8(vcc, skb);
			return ret;
		}
	}

	header = FUNC7(skb, sizeof(*header));

	/* This does _not_ include the size of the header */
	header->size = FUNC1(pktlen);
	header->vpi = FUNC1(vcc->vpi);
	header->vci = FUNC1(vcc->vci);
	header->type = FUNC1(PKT_DATA);

	FUNC3(card, FUNC0(vcc->dev), skb, vcc);

	return 0;
}