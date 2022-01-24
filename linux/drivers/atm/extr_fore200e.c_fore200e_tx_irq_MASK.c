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
struct host_txq_entry {int* status; scalar_t__ incarn; int /*<<< orphan*/  skb; struct fore200e_vc_map* vc_map; TYPE_2__* tpd; int /*<<< orphan*/  data; } ;
struct host_txq {scalar_t__ txing; size_t tail; struct host_txq_entry* host_entry; } ;
struct fore200e_vc_map {scalar_t__ incarn; struct atm_vcc* vcc; } ;
struct fore200e {struct host_txq host_txq; TYPE_3__* atm_dev; int /*<<< orphan*/  dev; } ;
struct atm_vcc {TYPE_4__* stats; int /*<<< orphan*/  (* pop ) (struct atm_vcc*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  tx; int /*<<< orphan*/  tx_err; } ;
struct TYPE_7__ {int /*<<< orphan*/  number; } ;
struct TYPE_6__ {TYPE_1__* tsd; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atm_vcc*) ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct host_txq_entry*,...) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QUEUE_SIZE_TX ; 
 int STATUS_COMPLETE ; 
 int STATUS_ERROR ; 
 int STATUS_FREE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct atm_vcc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct fore200e* fore200e)
{
    struct host_txq*        txq = &fore200e->host_txq;
    struct host_txq_entry*  entry;
    struct atm_vcc*         vcc;
    struct fore200e_vc_map* vc_map;

    if (fore200e->host_txq.txing == 0)
	return;

    for (;;) {
	
	entry = &txq->host_entry[ txq->tail ];

        if ((*entry->status & STATUS_COMPLETE) == 0) {
	    break;
	}

	FUNC1(3, "TX COMPLETED: entry = %p [tail = %d], vc_map = %p, skb = %p\n", 
		entry, txq->tail, entry->vc_map, entry->skb);

	/* free copy of misaligned data */
	FUNC6(entry->data);
	
	/* remove DMA mapping */
	FUNC5(fore200e->dev, entry->tpd->tsd[ 0 ].buffer, entry->tpd->tsd[ 0 ].length,
				 DMA_TO_DEVICE);

	vc_map = entry->vc_map;

	/* vcc closed since the time the entry was submitted for tx? */
	if ((vc_map->vcc == NULL) ||
	    (FUNC8(ATM_VF_READY, &vc_map->vcc->flags) == 0)) {

	    FUNC1(1, "no ready vcc found for PDU sent on device %d\n",
		    fore200e->atm_dev->number);

	    FUNC4(entry->skb);
	}
	else {
	    FUNC0(vc_map->vcc);

	    /* vcc closed then immediately re-opened? */
	    if (vc_map->incarn != entry->incarn) {

		/* when a vcc is closed, some PDUs may be still pending in the tx queue.
		   if the same vcc is immediately re-opened, those pending PDUs must
		   not be popped after the completion of their emission, as they refer
		   to the prior incarnation of that vcc. otherwise, sk_atm(vcc)->sk_wmem_alloc
		   would be decremented by the size of the (unrelated) skb, possibly
		   leading to a negative sk->sk_wmem_alloc count, ultimately freezing the vcc.
		   we thus bind the tx entry to the current incarnation of the vcc
		   when the entry is submitted for tx. When the tx later completes,
		   if the incarnation number of the tx entry does not match the one
		   of the vcc, then this implies that the vcc has been closed then re-opened.
		   we thus just drop the skb here. */

		FUNC1(1, "vcc closed-then-re-opened; dropping PDU sent on device %d\n",
			fore200e->atm_dev->number);

		FUNC4(entry->skb);
	    }
	    else {
		vcc = vc_map->vcc;
		FUNC0(vcc);

		/* notify tx completion */
		if (vcc->pop) {
		    vcc->pop(vcc, entry->skb);
		}
		else {
		    FUNC4(entry->skb);
		}

		/* check error condition */
		if (*entry->status & STATUS_ERROR)
		    FUNC3(&vcc->stats->tx_err);
		else
		    FUNC3(&vcc->stats->tx);
	    }
	}

	*entry->status = STATUS_FREE;

	fore200e->host_txq.txing--;

	FUNC2(txq->tail, QUEUE_SIZE_TX);
    }
}