#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct he_vcc {int rc_index; int /*<<< orphan*/  tx_waitq; int /*<<< orphan*/  rx_waitq; } ;
struct he_tpd {int status; struct atm_vcc* vcc; int /*<<< orphan*/ * skb; } ;
struct he_dev {int /*<<< orphan*/  global_lock; TYPE_4__* cs_stper; int /*<<< orphan*/  total_bw; } ;
struct TYPE_7__ {scalar_t__ traffic_class; } ;
struct TYPE_6__ {scalar_t__ traffic_class; } ;
struct TYPE_8__ {TYPE_2__ txtp; TYPE_1__ rxtp; } ;
struct atm_vcc {int /*<<< orphan*/  flags; TYPE_3__ qos; int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  sk_wmem_alloc; } ;
struct TYPE_9__ {scalar_t__ inuse; scalar_t__ pcr; } ;

/* Variables and functions */
#define  ATM_CBR 129 
 scalar_t__ ATM_NONE ; 
#define  ATM_UBR 128 
 int /*<<< orphan*/  ATM_VF_ADDR ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct he_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct he_vcc* FUNC2 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int HZ ; 
 int MAX_RETRY ; 
 int RCC_BUSY ; 
 int /*<<< orphan*/  RCC_STAT ; 
 int /*<<< orphan*/  RSR0_CLOSE_CONN ; 
 int /*<<< orphan*/  RXCON_CLOSE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int TPD_EOS ; 
 int TPD_INT ; 
 scalar_t__ FUNC4 (unsigned int volatile) ; 
 int /*<<< orphan*/  TSR14_DELETE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSR4_FLUSH_CONN ; 
 unsigned int volatile TSR4_SESSION_ENDED ; 
 struct he_tpd* FUNC7 (struct he_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct he_dev*,struct he_tpd*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 unsigned int FUNC11 (struct he_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct he_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct he_dev*,unsigned int) ; 
 unsigned int FUNC14 (struct he_dev*,unsigned int) ; 
 unsigned int FUNC15 (struct he_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct he_dev*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct he_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct he_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct he_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct he_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC22 (struct he_vcc*) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC29 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC33 () ; 

__attribute__((used)) static void
FUNC34(struct atm_vcc *vcc)
{
	unsigned long flags;
	FUNC0(wait, current);
	struct he_dev *he_dev = FUNC1(vcc->dev);
	struct he_tpd *tpd;
	unsigned cid;
	struct he_vcc *he_vcc = FUNC2(vcc);
#define MAX_RETRY 30
	int retry = 0, sleep = 1, tx_inuse;

	FUNC3("close vcc %p %d.%d\n", vcc, vcc->vpi, vcc->vci);

	FUNC10(ATM_VF_READY, &vcc->flags);
	cid = FUNC11(he_dev, vcc->vpi, vcc->vci);

	if (vcc->qos.rxtp.traffic_class != ATM_NONE) {
		int timeout;

		FUNC3("close rx cid 0x%x\n", cid);

		/* 2.7.2.2 close receive operation */

		/* wait for previous close (if any) to finish */

		FUNC30(&he_dev->global_lock, flags);
		while (FUNC12(he_dev, RCC_STAT) & RCC_BUSY) {
			FUNC3("close cid 0x%x RCC_BUSY\n", cid);
			FUNC32(250);
		}

		FUNC28(TASK_UNINTERRUPTIBLE);
		FUNC9(&he_vcc->rx_waitq, &wait);

		FUNC17(he_dev, RSR0_CLOSE_CONN, cid);
		(void) FUNC13(he_dev, cid);		/* flush posted writes */
		FUNC16(he_dev, cid, RXCON_CLOSE);
		FUNC31(&he_dev->global_lock, flags);

		timeout = FUNC27(30*HZ);

		FUNC26(&he_vcc->rx_waitq, &wait);
		FUNC28(TASK_RUNNING);

		if (timeout == 0)
			FUNC21("close rx timeout cid 0x%x\n", cid);

		FUNC3("close rx cid 0x%x complete\n", cid);

	}

	if (vcc->qos.txtp.traffic_class != ATM_NONE) {
		volatile unsigned tsr4, tsr0;
		int timeout;

		FUNC3("close tx cid 0x%x\n", cid);
		
		/* 2.1.2
		 *
		 * ... the host must first stop queueing packets to the TPDRQ
		 * on the connection to be closed, then wait for all outstanding
		 * packets to be transmitted and their buffers returned to the
		 * TBRQ. When the last packet on the connection arrives in the
		 * TBRQ, the host issues the close command to the adapter.
		 */

		while (((tx_inuse = FUNC25(&FUNC29(vcc)->sk_wmem_alloc)) > 1) &&
		       (retry < MAX_RETRY)) {
			FUNC23(sleep);
			if (sleep < 250)
				sleep = sleep * 2;

			++retry;
		}

		if (tx_inuse > 1)
			FUNC21("close tx cid 0x%x tx_inuse = %d\n", cid, tx_inuse);

		/* 2.3.1.1 generic close operations with flush */

		FUNC30(&he_dev->global_lock, flags);
		FUNC20(he_dev, TSR4_FLUSH_CONN, cid);
					/* also clears TSR4_SESSION_ENDED */

		switch (vcc->qos.txtp.traffic_class) {
			case ATM_UBR:
				FUNC18(he_dev, 
					FUNC5(FUNC24(200000))
					| FUNC6(0), cid);
				break;
			case ATM_CBR:
				FUNC19(he_dev, TSR14_DELETE, cid);
				break;
		}
		(void) FUNC15(he_dev, cid);		/* flush posted writes */

		tpd = FUNC7(he_dev);
		if (tpd == NULL) {
			FUNC21("close tx he_alloc_tpd failed cid 0x%x\n", cid);
			goto close_tx_incomplete;
		}
		tpd->status |= TPD_EOS | TPD_INT;
		tpd->skb = NULL;
		tpd->vcc = vcc;
		FUNC33();

		FUNC28(TASK_UNINTERRUPTIBLE);
		FUNC9(&he_vcc->tx_waitq, &wait);
		FUNC8(he_dev, tpd, cid);
		FUNC31(&he_dev->global_lock, flags);

		timeout = FUNC27(30*HZ);

		FUNC26(&he_vcc->tx_waitq, &wait);
		FUNC28(TASK_RUNNING);

		FUNC30(&he_dev->global_lock, flags);

		if (timeout == 0) {
			FUNC21("close tx timeout cid 0x%x\n", cid);
			goto close_tx_incomplete;
		}

		while (!((tsr4 = FUNC15(he_dev, cid)) & TSR4_SESSION_ENDED)) {
			FUNC3("close tx cid 0x%x !TSR4_SESSION_ENDED (tsr4 = 0x%x)\n", cid, tsr4);
			FUNC32(250);
		}

		while (FUNC4(tsr0 = FUNC14(he_dev, cid)) != 0) {
			FUNC3("close tx cid 0x%x TSR0_CONN_STATE != 0 (tsr0 = 0x%x)\n", cid, tsr0);
			FUNC32(250);
		}

close_tx_incomplete:

		if (vcc->qos.txtp.traffic_class == ATM_CBR) {
			int reg = he_vcc->rc_index;

			FUNC3("cs_stper reg = %d\n", reg);

			if (he_dev->cs_stper[reg].inuse == 0)
				FUNC21("cs_stper[%d].inuse = 0!\n", reg);
			else
				--he_dev->cs_stper[reg].inuse;

			he_dev->total_bw -= he_dev->cs_stper[reg].pcr;
		}
		FUNC31(&he_dev->global_lock, flags);

		FUNC3("close tx cid 0x%x complete\n", cid);
	}

	FUNC22(he_vcc);

	FUNC10(ATM_VF_ADDR, &vcc->flags);
}