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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct scq_info {int /*<<< orphan*/  pending; int /*<<< orphan*/  transmit; int /*<<< orphan*/  paddr; int /*<<< orphan*/  base; } ;
struct idt77252_dev {TYPE_1__* pcidev; } ;
struct atm_vcc {int /*<<< orphan*/  (* pop ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct TYPE_4__ {struct atm_vcc* vcc; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  SCQ_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scq_info*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct atm_vcc*,struct sk_buff*) ; 

__attribute__((used)) static void
FUNC9(struct idt77252_dev *card, struct scq_info *scq)
{
	struct sk_buff *skb;
	struct atm_vcc *vcc;

	FUNC3(&card->pcidev->dev, SCQ_SIZE,
			  scq->base, scq->paddr);

	while ((skb = FUNC6(&scq->transmit))) {
		FUNC4(&card->pcidev->dev, FUNC1(skb),
				 skb->len, DMA_TO_DEVICE);

		vcc = FUNC0(skb)->vcc;
		if (vcc->pop)
			vcc->pop(vcc, skb);
		else
			FUNC2(skb);
	}

	while ((skb = FUNC6(&scq->pending))) {
		FUNC4(&card->pcidev->dev, FUNC1(skb),
				 skb->len, DMA_TO_DEVICE);

		vcc = FUNC0(skb)->vcc;
		if (vcc->pop)
			vcc->pop(vcc, skb);
		else
			FUNC2(skb);
	}

	FUNC5(scq);
}