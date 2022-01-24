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
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  len; } ;
struct TYPE_6__ {struct atm_vcc* atmvcc; } ;
struct lanai_vcc {TYPE_2__ tx; int /*<<< orphan*/ * vbase; } ;
struct lanai_dev {int dummy; } ;
struct TYPE_7__ {int aal; } ;
struct atm_vcc {int /*<<< orphan*/  vci; TYPE_3__ qos; TYPE_1__* dev; scalar_t__ dev_data; } ;
struct TYPE_8__ {struct atm_vcc* vcc; } ;
struct TYPE_5__ {scalar_t__ dev_data; } ;

/* Variables and functions */
#define  ATM_AAL0 129 
#define  ATM_AAL5 128 
 int /*<<< orphan*/  ATM_CELL_SIZE ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  vcc_sklist_lock ; 
 int /*<<< orphan*/  FUNC7 (struct lanai_dev*,struct lanai_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct lanai_dev*,struct lanai_vcc*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct atm_vcc *atmvcc, struct sk_buff *skb)
{
	struct lanai_vcc *lvcc = (struct lanai_vcc *) atmvcc->dev_data;
	struct lanai_dev *lanai = (struct lanai_dev *) atmvcc->dev->dev_data;
	unsigned long flags;
	if (FUNC6(lvcc == NULL || lvcc->vbase == NULL ||
	      lvcc->tx.atmvcc != atmvcc))
		goto einval;
#ifdef DEBUG
	if (unlikely(skb == NULL)) {
		DPRINTK("lanai_send: skb==NULL for vci=%d\n", atmvcc->vci);
		goto einval;
	}
	if (unlikely(lanai == NULL)) {
		DPRINTK("lanai_send: lanai==NULL for vci=%d\n", atmvcc->vci);
		goto einval;
	}
#endif
	FUNC0(skb)->vcc = atmvcc;
	switch (atmvcc->qos.aal) {
		case ATM_AAL5:
			FUNC4(&vcc_sklist_lock, flags);
			FUNC8(lanai, lvcc, skb);
			FUNC5(&vcc_sklist_lock, flags);
			return 0;
		case ATM_AAL0:
			if (FUNC6(skb->len != ATM_CELL_SIZE-1))
				goto einval;
  /* NOTE - this next line is technically invalid - we haven't unshared skb */
			FUNC2((u32 *) skb->data);
			FUNC4(&vcc_sklist_lock, flags);
			FUNC7(lanai, lvcc, skb);
			FUNC5(&vcc_sklist_lock, flags);
			return 0;
	}
	FUNC1("lanai_send: bad aal=%d on vci=%d\n", (int) atmvcc->qos.aal,
	    atmvcc->vci);
    einval:
	FUNC3(atmvcc, skb);
	return -EINVAL;
}