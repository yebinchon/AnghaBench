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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_7__ {scalar_t__ base; } ;
struct TYPE_6__ {scalar_t__ base; } ;
struct idt77252_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  flags; scalar_t__ membase; scalar_t__* fbq; TYPE_4__* pcidev; TYPE_3__ tsq; TYPE_2__ rsq; int /*<<< orphan*/  raw_cell_paddr; scalar_t__ raw_cell_hnd; int /*<<< orphan*/  vcs; int /*<<< orphan*/  scd2vc; int /*<<< orphan*/  soft_tst; TYPE_1__* sbpool; scalar_t__ atmdev; int /*<<< orphan*/  index; } ;
struct TYPE_8__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct sk_buff** skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int FBQ_SIZE ; 
 int /*<<< orphan*/  IDT77252_BIT_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  SAR_REG_CFG ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(struct idt77252_dev *card)
{
	struct sk_buff *skb;
	int i, j;

	if (!FUNC13(IDT77252_BIT_INIT, &card->flags)) {
		FUNC11("%s: SAR not yet initialized.\n", card->name);
		return;
	}
	FUNC0("idt77252: deinitialize card %u\n", card->index);

	FUNC15(0, SAR_REG_CFG);

	if (card->atmdev)
		FUNC2(card->atmdev);

	for (i = 0; i < 4; i++) {
		for (j = 0; j < FBQ_SIZE; j++) {
			skb = card->sbpool[i].skb[j];
			if (skb) {
				FUNC8(&card->pcidev->dev,
						 FUNC1(skb),
						 (FUNC12(skb) -
						  skb->data),
						 DMA_FROM_DEVICE);
				card->sbpool[i].skb[j] = NULL;
				FUNC6(skb);
			}
		}
	}

	FUNC14(card->soft_tst);

	FUNC14(card->scd2vc);

	FUNC14(card->vcs);

	if (card->raw_cell_hnd) {
		FUNC7(&card->pcidev->dev, 2 * sizeof(u32),
				  card->raw_cell_hnd, card->raw_cell_paddr);
	}

	if (card->rsq.base) {
		FUNC0("%s: Release RSQ ...\n", card->name);
		FUNC4(card);
	}

	if (card->tsq.base) {
		FUNC0("%s: Release TSQ ...\n", card->name);
		FUNC5(card);
	}

	FUNC0("idt77252: Release IRQ.\n");
	FUNC9(card->pcidev->irq, card);

	for (i = 0; i < 4; i++) {
		if (card->fbq[i])
			FUNC10(card->fbq[i]);
	}

	if (card->membase)
		FUNC10(card->membase);

	FUNC3(IDT77252_BIT_INIT, &card->flags);
	FUNC0("%s: Card deinitialized.\n", card->name);
}