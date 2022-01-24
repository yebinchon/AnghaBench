#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_26__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  org; } ;
struct TYPE_25__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  org; } ;
struct TYPE_23__ {int /*<<< orphan*/  queue; } ;
struct TYPE_22__ {int /*<<< orphan*/  queue; } ;
struct TYPE_21__ {int count; int /*<<< orphan*/  queue; } ;
struct TYPE_20__ {int count; int /*<<< orphan*/  queue; } ;
struct TYPE_17__ {int index; scalar_t__ membase; TYPE_9__* pcidev; TYPE_8__ tsq; TYPE_7__ rsq; int /*<<< orphan*/  idr; TYPE_6__** scd2vc; int /*<<< orphan*/  scq0; TYPE_5__ sbpool; TYPE_4__ lbpool; TYPE_3__ iovpool; TYPE_2__ hbpool; TYPE_11__* atmdev; } ;
typedef  TYPE_10__ ns_dev ;
struct TYPE_27__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_24__ {int /*<<< orphan*/ * tx_vcc; int /*<<< orphan*/  scq; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* stop ) (TYPE_11__*) ;} ;
struct TYPE_18__ {TYPE_1__* phy; } ;

/* Variables and functions */
 scalar_t__ CFG ; 
 int NS_FRSCD_NUM ; 
 scalar_t__ NS_RSQSIZE ; 
 scalar_t__ NS_RSQ_ALIGNMENT ; 
 scalar_t__ NS_TSQSIZE ; 
 scalar_t__ NS_TSQ_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*) ; 
 int /*<<< orphan*/ ** cards ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 TYPE_10__* FUNC10 (struct pci_dev*) ; 
 struct sk_buff* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC14(struct pci_dev *pcidev)
{
	int i, j;
	ns_dev *card = FUNC10(pcidev);
	struct sk_buff *hb;
	struct sk_buff *iovb;
	struct sk_buff *lb;
	struct sk_buff *sb;

	i = card->index;

	if (cards[i] == NULL)
		return;

	if (card->atmdev->phy && card->atmdev->phy->stop)
		card->atmdev->phy->stop(card->atmdev);

	/* Stop everything */
	FUNC13(0x00000000, card->membase + CFG);

	/* De-register device */
	FUNC1(card->atmdev);

	/* Disable PCI device */
	FUNC9(pcidev);

	/* Free up resources */
	j = 0;
	FUNC0("nicstar%d: freeing %d huge buffers.\n", i, card->hbpool.count);
	while ((hb = FUNC11(&card->hbpool.queue)) != NULL) {
		FUNC2(hb);
		j++;
	}
	FUNC0("nicstar%d: %d huge buffers freed.\n", i, j);
	j = 0;
	FUNC0("nicstar%d: freeing %d iovec buffers.\n", i,
	       card->iovpool.count);
	while ((iovb = FUNC11(&card->iovpool.queue)) != NULL) {
		FUNC2(iovb);
		j++;
	}
	FUNC0("nicstar%d: %d iovec buffers freed.\n", i, j);
	while ((lb = FUNC11(&card->lbpool.queue)) != NULL)
		FUNC2(lb);
	while ((sb = FUNC11(&card->sbpool.queue)) != NULL)
		FUNC2(sb);
	FUNC5(card, card->scq0, NULL);
	for (j = 0; j < NS_FRSCD_NUM; j++) {
		if (card->scd2vc[j] != NULL)
			FUNC5(card, card->scd2vc[j]->scq, card->scd2vc[j]->tx_vcc);
	}
	FUNC6(&card->idr);
	FUNC3(&card->pcidev->dev, NS_RSQSIZE + NS_RSQ_ALIGNMENT,
			  card->rsq.org, card->rsq.dma);
	FUNC3(&card->pcidev->dev, NS_TSQSIZE + NS_TSQ_ALIGNMENT,
			  card->tsq.org, card->tsq.dma);
	FUNC4(card->pcidev->irq, card);
	FUNC7(card->membase);
	FUNC8(card);
}