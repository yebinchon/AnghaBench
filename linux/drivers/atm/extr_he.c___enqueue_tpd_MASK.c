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
struct he_tpdrq {unsigned int cid; int /*<<< orphan*/  tpd; } ;
struct he_tpd {int /*<<< orphan*/  status; int /*<<< orphan*/  entry; TYPE_4__* vcc; scalar_t__ skb; TYPE_2__* iovec; } ;
struct he_dev {struct he_tpdrq* tpdrq_tail; int /*<<< orphan*/  outstanding_tpds; int /*<<< orphan*/  tpd_pool; TYPE_1__* pci_dev; struct he_tpdrq* tpdrq_head; scalar_t__ tpdrq_base; } ;
struct TYPE_8__ {TYPE_3__* stats; int /*<<< orphan*/  (* pop ) (TYPE_4__*,scalar_t__) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  tx_err; } ;
struct TYPE_6__ {int len; scalar_t__ addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct he_tpd*,unsigned int,struct he_tpdrq*) ; 
 int /*<<< orphan*/  TPDRQ_B_H ; 
 unsigned long FUNC1 (struct he_tpdrq*) ; 
 int /*<<< orphan*/  TPDRQ_T ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int TPD_LEN_MASK ; 
 int TPD_MAXIOV ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct he_tpd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 struct he_tpdrq* FUNC7 (struct he_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct he_dev*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static __inline__ void
FUNC13(struct he_dev *he_dev, struct he_tpd *tpd, unsigned cid)
{
	struct he_tpdrq *new_tail;

	FUNC0("tpdrq %p cid 0x%x -> tpdrq_tail %p\n",
					tpd, cid, he_dev->tpdrq_tail);

	/* new_tail = he_dev->tpdrq_tail; */
	new_tail = (struct he_tpdrq *) ((unsigned long) he_dev->tpdrq_base |
					FUNC1(he_dev->tpdrq_tail+1));

	/*
	 * check to see if we are about to set the tail == head
	 * if true, update the head pointer from the adapter
	 * to see if this is really the case (reading the queue
	 * head for every enqueue would be unnecessarily slow)
	 */

	if (new_tail == he_dev->tpdrq_head) {
		he_dev->tpdrq_head = (struct he_tpdrq *)
			(((unsigned long)he_dev->tpdrq_base) |
				FUNC1(FUNC7(he_dev, TPDRQ_B_H)));

		if (new_tail == he_dev->tpdrq_head) {
			int slot;

			FUNC9("tpdrq full (cid 0x%x)\n", cid);
			/*
			 * FIXME
			 * push tpd onto a transmit backlog queue
			 * after service_tbrq, service the backlog
			 * for now, we just drop the pdu
			 */
			for (slot = 0; slot < TPD_MAXIOV; ++slot) {
				if (tpd->iovec[slot].addr)
					FUNC6(&he_dev->pci_dev->dev,
						tpd->iovec[slot].addr,
						tpd->iovec[slot].len & TPD_LEN_MASK,
								DMA_TO_DEVICE);
			}
			if (tpd->skb) {
				if (tpd->vcc->pop)
					tpd->vcc->pop(tpd->vcc, tpd->skb);
				else
					FUNC4(tpd->skb);
				FUNC3(&tpd->vcc->stats->tx_err);
			}
			FUNC5(he_dev->tpd_pool, tpd, FUNC2(tpd->status));
			return;
		}
	}

	/* 2.1.5 transmit packet descriptor ready queue */
	FUNC10(&tpd->entry, &he_dev->outstanding_tpds);
	he_dev->tpdrq_tail->tpd = FUNC2(tpd->status);
	he_dev->tpdrq_tail->cid = cid;
	FUNC12();

	he_dev->tpdrq_tail = new_tail;

	FUNC8(he_dev, FUNC1(he_dev->tpdrq_tail), TPDRQ_T);
	(void) FUNC7(he_dev, TPDRQ_T);		/* flush posted writes */
}