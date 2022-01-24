#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct solos_card {TYPE_2__* dev; } ;
struct sk_buff {int dummy; } ;
struct pkt_hdr {void* type; void* vci; void* vpi; void* size; } ;
struct TYPE_4__ {int /*<<< orphan*/  aal; } ;
struct atm_vcc {int /*<<< orphan*/  flags; TYPE_3__* dev; int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; TYPE_1__ qos; } ;
struct TYPE_6__ {struct solos_card* dev_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_AAL5 ; 
 int /*<<< orphan*/  ATM_VF_ADDR ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PKT_POPEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct solos_card*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pkt_hdr* FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC8(struct atm_vcc *vcc)
{
	struct solos_card *card = vcc->dev->dev_data;
	struct sk_buff *skb;
	struct pkt_hdr *header;

	if (vcc->qos.aal != ATM_AAL5) {
		FUNC3(&card->dev->dev, "Unsupported ATM type %d\n",
			 vcc->qos.aal);
		return -EINVAL;
	}

	skb = FUNC1(sizeof(*header), GFP_KERNEL);
	if (!skb) {
		if (FUNC5())
			FUNC3(&card->dev->dev, "Failed to allocate sk_buff in popen()\n");
		return -ENOMEM;
	}
	header = FUNC7(skb, sizeof(*header));

	header->size = FUNC2(0);
	header->vpi = FUNC2(vcc->vpi);
	header->vci = FUNC2(vcc->vci);
	header->type = FUNC2(PKT_POPEN);

	FUNC4(card, FUNC0(vcc->dev), skb, NULL);

	FUNC6(ATM_VF_ADDR, &vcc->flags);
	FUNC6(ATM_VF_READY, &vcc->flags);

	return 0;
}