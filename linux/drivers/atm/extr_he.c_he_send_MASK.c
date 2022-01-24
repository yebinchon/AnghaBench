#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct he_tpd {int status; int length0; struct sk_buff* skb; struct atm_vcc* vcc; void* address0; TYPE_2__* iovec; } ;
struct he_dev {int /*<<< orphan*/  global_lock; TYPE_3__* pci_dev; } ;
struct TYPE_7__ {scalar_t__ aal; } ;
struct atm_vcc {TYPE_4__* stats; int /*<<< orphan*/  (* pop ) (struct atm_vcc*,struct sk_buff*) ;TYPE_1__ qos; int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_12__ {struct atm_vcc* vcc; } ;
struct TYPE_11__ {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_10__ {int /*<<< orphan*/  tx; int /*<<< orphan*/  tx_err; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int len; void* addr; } ;

/* Variables and functions */
 scalar_t__ ATM_AAL0 ; 
 int ATM_AAL0_SDU ; 
 scalar_t__ ATM_AAL5 ; 
 int ATM_CELL_PAYLOAD ; 
 char ATM_HDR_CLP ; 
 char ATM_HDR_PTI_MASK ; 
 char ATM_HDR_PTI_SHIFT ; 
 TYPE_6__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct he_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int HE_TPD_BUFSIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int TPD_CLP ; 
 int TPD_INT ; 
 int TPD_LST ; 
 int TPD_MAXIOV ; 
 int TPD_USERCELL ; 
 struct he_tpd* FUNC4 (struct he_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct he_dev*,struct he_tpd*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (struct he_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 TYPE_5__* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 () ; 

__attribute__((used)) static int
FUNC23(struct atm_vcc *vcc, struct sk_buff *skb)
{
	unsigned long flags;
	struct he_dev *he_dev = FUNC1(vcc->dev);
	unsigned cid = FUNC9(he_dev, vcc->vpi, vcc->vci);
	struct he_tpd *tpd;
#ifdef USE_SCATTERGATHER
	int i, slot = 0;
#endif

#define HE_TPD_BUFSIZE 0xffff

	FUNC2("send %d.%d\n", vcc->vpi, vcc->vci);

	if ((skb->len > HE_TPD_BUFSIZE) ||
	    ((vcc->qos.aal == ATM_AAL0) && (skb->len != ATM_AAL0_SDU))) {
		FUNC10("buffer too large (or small) -- %d bytes\n", skb->len );
		if (vcc->pop)
			vcc->pop(vcc, skb);
		else
			FUNC7(skb);
		FUNC6(&vcc->stats->tx_err);
		return -EINVAL;
	}

#ifndef USE_SCATTERGATHER
	if (FUNC15(skb)->nr_frags) {
		FUNC10("no scatter/gather support\n");
		if (vcc->pop)
			vcc->pop(vcc, skb);
		else
			FUNC7(skb);
		FUNC6(&vcc->stats->tx_err);
		return -EINVAL;
	}
#endif
	FUNC16(&he_dev->global_lock, flags);

	tpd = FUNC4(he_dev);
	if (tpd == NULL) {
		if (vcc->pop)
			vcc->pop(vcc, skb);
		else
			FUNC7(skb);
		FUNC6(&vcc->stats->tx_err);
		FUNC17(&he_dev->global_lock, flags);
		return -ENOMEM;
	}

	if (vcc->qos.aal == ATM_AAL5)
		tpd->status |= FUNC3(TPD_USERCELL);
	else {
		char *pti_clp = (void *) (skb->data + 3);
		int clp, pti;

		pti = (*pti_clp & ATM_HDR_PTI_MASK) >> ATM_HDR_PTI_SHIFT; 
		clp = (*pti_clp & ATM_HDR_CLP);
		tpd->status |= FUNC3(pti);
		if (clp)
			tpd->status |= TPD_CLP;

		FUNC14(skb, ATM_AAL0_SDU - ATM_CELL_PAYLOAD);
	}

#ifdef USE_SCATTERGATHER
	tpd->iovec[slot].addr = dma_map_single(&he_dev->pci_dev->dev, skb->data,
				skb_headlen(skb), DMA_TO_DEVICE);
	tpd->iovec[slot].len = skb_headlen(skb);
	++slot;

	for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
		skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

		if (slot == TPD_MAXIOV) {	/* queue tpd; start new tpd */
			tpd->vcc = vcc;
			tpd->skb = NULL;	/* not the last fragment
						   so dont ->push() yet */
			wmb();

			__enqueue_tpd(he_dev, tpd, cid);
			tpd = __alloc_tpd(he_dev);
			if (tpd == NULL) {
				if (vcc->pop)
					vcc->pop(vcc, skb);
				else
					dev_kfree_skb_any(skb);
				atomic_inc(&vcc->stats->tx_err);
				spin_unlock_irqrestore(&he_dev->global_lock, flags);
				return -ENOMEM;
			}
			tpd->status |= TPD_USERCELL;
			slot = 0;
		}

		tpd->iovec[slot].addr = skb_frag_dma_map(&he_dev->pci_dev->dev,
				frag, 0, skb_frag_size(frag), DMA_TO_DEVICE);
		tpd->iovec[slot].len = skb_frag_size(frag);
		++slot;

	}

	tpd->iovec[slot - 1].len |= TPD_LST;
#else
	tpd->address0 = FUNC8(&he_dev->pci_dev->dev, skb->data, skb->len, DMA_TO_DEVICE);
	tpd->length0 = skb->len | TPD_LST;
#endif
	tpd->status |= TPD_INT;

	tpd->vcc = vcc;
	tpd->skb = skb;
	FUNC22();
	FUNC0(skb)->vcc = vcc;

	FUNC5(he_dev, tpd, cid);
	FUNC17(&he_dev->global_lock, flags);

	FUNC6(&vcc->stats->tx);

	return 0;
}