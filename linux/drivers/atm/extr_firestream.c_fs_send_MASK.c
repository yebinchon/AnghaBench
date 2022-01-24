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
struct sk_buff {int len; struct FS_BPENTRY* data; } ;
struct fs_vcc {int channo; struct sk_buff* last_skb; } ;
struct TYPE_5__ {int /*<<< orphan*/  offset; } ;
struct TYPE_6__ {int /*<<< orphan*/  offset; } ;
struct fs_dev {TYPE_1__ tx_relq; TYPE_2__ hp_txq; int /*<<< orphan*/  ntxpckts; } ;
struct atm_vcc {int /*<<< orphan*/  dev; } ;
struct FS_BPENTRY {int flags; struct fs_dev* dev; struct sk_buff* skb; int /*<<< orphan*/  bsa; scalar_t__ next; } ;
struct TYPE_8__ {struct atm_vcc* vcc; } ;
struct TYPE_7__ {int flags; struct fs_dev* dev; struct sk_buff* skb; int /*<<< orphan*/  bsa; scalar_t__ next; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FS_DEBUG_ALLOC ; 
 int /*<<< orphan*/  FS_DEBUG_QUEUE ; 
 int /*<<< orphan*/  FS_DEBUG_SEND ; 
 int /*<<< orphan*/  FS_DEBUG_TXMEM ; 
 struct fs_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct fs_vcc* FUNC2 (struct atm_vcc*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int QE_TRANSMIT_DE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int TD_DATA ; 
 int TD_EPI ; 
 struct FS_BPENTRY** da ; 
 TYPE_3__* dq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct FS_BPENTRY* FUNC8 (int,int /*<<< orphan*/ ) ; 
 size_t qd ; 
 int /*<<< orphan*/  FUNC9 (struct fs_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fs_dev*,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct FS_BPENTRY*) ; 

__attribute__((used)) static int FUNC12 (struct atm_vcc *atm_vcc, struct sk_buff *skb)
{
	struct fs_dev *dev = FUNC1 (atm_vcc->dev);
	struct fs_vcc *vcc = FUNC2 (atm_vcc);
	struct FS_BPENTRY *td;

	FUNC6 ();

	FUNC5 (FS_DEBUG_TXMEM, "I");
	FUNC5 (FS_DEBUG_SEND, "Send: atm_vcc %p skb %p vcc %p dev %p\n", 
		    atm_vcc, skb, vcc, dev);

	FUNC5 (FS_DEBUG_ALLOC, "Alloc t-skb: %p (atm_send)\n", skb);

	FUNC0(skb)->vcc = atm_vcc;

	vcc->last_skb = skb;

	td = FUNC8 (sizeof (struct FS_BPENTRY), GFP_ATOMIC);
	FUNC5 (FS_DEBUG_ALLOC, "Alloc transd: %p(%zd)\n", td, sizeof (struct FS_BPENTRY));
	if (!td) {
		/* Oops out of mem */
		return -ENOMEM;
	}

	FUNC5 (FS_DEBUG_SEND, "first word in buffer: %x\n", 
		    *(int *) skb->data);

	td->flags =  TD_EPI | TD_DATA | skb->len;
	td->next = 0;
	td->bsa  = FUNC11 (skb->data);
	td->skb = skb;
	td->dev = dev;
	dev->ntxpckts++;

#ifdef DEBUG_EXTRA
	da[qd] = td;
	dq[qd].flags = td->flags;
	dq[qd].next  = td->next;
	dq[qd].bsa   = td->bsa;
	dq[qd].skb   = td->skb;
	dq[qd].dev   = td->dev;
	qd++;
	if (qd >= 60) qd = 0;
#endif

	FUNC10 (dev, &dev->hp_txq, 
		      QE_TRANSMIT_DE | vcc->channo,
		      FUNC11 (td), 0, 
		      FUNC11 (td));

	FUNC5 (FS_DEBUG_QUEUE, "in send: txq %d txrq %d\n", 
		    FUNC9 (dev, FUNC3 (dev->hp_txq.offset)) -
		    FUNC9 (dev, FUNC4 (dev->hp_txq.offset)),
		    FUNC9 (dev, FUNC3 (dev->tx_relq.offset)) -
		    FUNC9 (dev, FUNC4 (dev->tx_relq.offset)));

	FUNC7 ();
	return 0;
}