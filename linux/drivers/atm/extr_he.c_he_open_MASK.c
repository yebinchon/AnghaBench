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
struct he_vcc {int rc_index; int /*<<< orphan*/  tx_waitq; int /*<<< orphan*/  rx_waitq; scalar_t__ pdu_len; int /*<<< orphan*/  buffers; } ;
struct he_dev {int total_bw; int /*<<< orphan*/  global_lock; TYPE_4__* cs_stper; TYPE_3__* atm_dev; } ;
struct TYPE_7__ {scalar_t__ traffic_class; } ;
struct TYPE_11__ {scalar_t__ traffic_class; } ;
struct TYPE_8__ {int aal; TYPE_1__ rxtp; TYPE_5__ txtp; } ;
struct atm_vcc {short vpi; int vci; int /*<<< orphan*/  flags; TYPE_2__ qos; struct he_vcc* dev_data; int /*<<< orphan*/  dev; } ;
struct TYPE_12__ {int /*<<< orphan*/  rx_waitq; } ;
struct TYPE_10__ {int pcr; int /*<<< orphan*/  inuse; } ;
struct TYPE_9__ {int link_rate; } ;

/* Variables and functions */
#define  ATM_AAL0 131 
#define  ATM_AAL5 130 
#define  ATM_CBR 129 
 scalar_t__ ATM_NONE ; 
 int ATM_NOT_RSV_VCI ; 
#define  ATM_UBR 128 
 int ATM_VCI_UNSPEC ; 
 int /*<<< orphan*/  ATM_VF_ADDR ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 short ATM_VPI_UNSPEC ; 
 int /*<<< orphan*/  CS_STPER0 ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct he_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int HE_NUM_CS_STPER ; 
 TYPE_6__* FUNC1 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int RSR0_AAL5 ; 
 unsigned int RSR0_EPD_ENABLE ; 
 unsigned int RSR0_OPEN_CONN ; 
 unsigned int RSR0_PPD_ENABLE ; 
 unsigned int RSR0_RAWCELL ; 
 unsigned int RSR0_START_PDU ; 
 unsigned int RSR0_TCP_CKSUM ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int RSR1_RBPL_ONLY ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int RSR4_RBPL_ONLY ; 
 unsigned int TSR0_AAL0_SDU ; 
 unsigned int TSR0_AAL5 ; 
 unsigned int TSR0_CBR ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (unsigned int) ; 
 unsigned int TSR0_UBR ; 
 unsigned int TSR0_UPDATE_GER ; 
 unsigned int TSR0_USE_WMIN ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 unsigned int TSR4_AAL0_SDU ; 
 unsigned int TSR4_AAL5 ; 
 int /*<<< orphan*/  TSR9_OPEN_CONN ; 
 int FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct he_dev*) ; 
 unsigned int FUNC15 (struct he_dev*,short,int) ; 
 unsigned int FUNC16 (struct he_dev*,unsigned int) ; 
 unsigned int FUNC17 (struct he_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct he_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct he_dev*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct he_dev*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (struct he_dev*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (struct he_dev*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (struct he_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC24 (struct he_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (struct he_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (struct he_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC27 (struct he_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC28 (struct he_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC29 (struct he_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC30 (struct he_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC31 (struct he_dev*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC32 (struct he_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC33 (struct he_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC34 (struct he_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC35 (struct he_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC36 (struct he_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC37 (char*,...) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (struct he_vcc*) ; 
 struct he_vcc* FUNC40 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC45(struct atm_vcc *vcc)
{
	unsigned long flags;
	struct he_dev *he_dev = FUNC0(vcc->dev);
	struct he_vcc *he_vcc;
	int err = 0;
	unsigned cid, rsr0, rsr1, rsr4, tsr0, tsr0_aal, tsr4, period, reg, clock;
	short vpi = vcc->vpi;
	int vci = vcc->vci;

	if (vci == ATM_VCI_UNSPEC || vpi == ATM_VPI_UNSPEC)
		return 0;

	FUNC2("open vcc %p %d.%d\n", vcc, vpi, vci);

	FUNC42(ATM_VF_ADDR, &vcc->flags);

	cid = FUNC15(he_dev, vpi, vci);

	he_vcc = FUNC40(sizeof(struct he_vcc), GFP_ATOMIC);
	if (he_vcc == NULL) {
		FUNC37("unable to allocate he_vcc during open\n");
		return -ENOMEM;
	}

	FUNC3(&he_vcc->buffers);
	he_vcc->pdu_len = 0;
	he_vcc->rc_index = -1;

	FUNC38(&he_vcc->rx_waitq);
	FUNC38(&he_vcc->tx_waitq);

	vcc->dev_data = he_vcc;

	if (vcc->qos.txtp.traffic_class != ATM_NONE) {
		int pcr_goal;

		pcr_goal = FUNC12(&vcc->qos.txtp);
		if (pcr_goal == 0)
			pcr_goal = he_dev->atm_dev->link_rate;
		if (pcr_goal < 0)	/* means round down, technically */
			pcr_goal = -pcr_goal;

		FUNC2("open tx cid 0x%x pcr_goal %d\n", cid, pcr_goal);

		switch (vcc->qos.aal) {
			case ATM_AAL5:
				tsr0_aal = TSR0_AAL5;
				tsr4 = TSR4_AAL5;
				break;
			case ATM_AAL0:
				tsr0_aal = TSR0_AAL0_SDU;
				tsr4 = TSR4_AAL0_SDU;
				break;
			default:
				err = -EINVAL;
				goto open_failed;
		}

		FUNC43(&he_dev->global_lock, flags);
		tsr0 = FUNC17(he_dev, cid);
		FUNC44(&he_dev->global_lock, flags);

		if (FUNC6(tsr0) != 0) {
			FUNC37("cid 0x%x not idle (tsr0 = 0x%x)\n", cid, tsr0);
			err = -EBUSY;
			goto open_failed;
		}

		switch (vcc->qos.txtp.traffic_class) {
			case ATM_UBR:
				/* 2.3.3.1 open connection ubr */

				tsr0 = TSR0_UBR | FUNC7(0) | tsr0_aal |
					TSR0_USE_WMIN | TSR0_UPDATE_GER;
				break;

			case ATM_CBR:
				/* 2.3.3.2 open connection cbr */

				/* 8.2.3 cbr scheduler wrap problem -- limit to 90% total link rate */
				if ((he_dev->total_bw + pcr_goal)
					> (he_dev->atm_dev->link_rate * 9 / 10))
				{
					err = -EBUSY;
					goto open_failed;
				}

				FUNC43(&he_dev->global_lock, flags);			/* also protects he_dev->cs_stper[] */

				/* find an unused cs_stper register */
				for (reg = 0; reg < HE_NUM_CS_STPER; ++reg)
					if (he_dev->cs_stper[reg].inuse == 0 || 
					    he_dev->cs_stper[reg].pcr == pcr_goal)
							break;

				if (reg == HE_NUM_CS_STPER) {
					err = -EBUSY;
					FUNC44(&he_dev->global_lock, flags);
					goto open_failed;
				}

				he_dev->total_bw += pcr_goal;

				he_vcc->rc_index = reg;
				++he_dev->cs_stper[reg].inuse;
				he_dev->cs_stper[reg].pcr = pcr_goal;

				clock = FUNC14(he_dev) ? 66667000 : 50000000;
				period = clock / pcr_goal;
				
				FUNC2("rc_index = %d period = %d\n",
								reg, period);

				FUNC18(he_dev, FUNC41(period/2),
							CS_STPER0 + reg);
				FUNC44(&he_dev->global_lock, flags);

				tsr0 = TSR0_CBR | FUNC7(0) | tsr0_aal |
							FUNC8(reg);

				break;
			default:
				err = -EINVAL;
				goto open_failed;
		}

		FUNC43(&he_dev->global_lock, flags);

		FUNC22(he_dev, tsr0, cid);
		FUNC31(he_dev, tsr4 | 1, cid);
		FUNC23(he_dev, FUNC9(FUNC41(0)) |
					FUNC10(FUNC41(pcr_goal)), cid);
		FUNC29(he_dev, FUNC11(FUNC41(pcr_goal)), cid);
		FUNC36(he_dev, TSR9_OPEN_CONN, cid);

		FUNC30(he_dev, 0x0, cid);
		FUNC32(he_dev, 0x0, cid);
		FUNC33(he_dev, 0x0, cid);
		FUNC34(he_dev, 0x0, cid);
		FUNC35(he_dev, 0x0, cid);
		FUNC24(he_dev, 0x0, cid);
		FUNC25(he_dev, 0x0, cid);
		FUNC26(he_dev, 0x0, cid);
		FUNC27(he_dev, 0x0, cid);
		FUNC28(he_dev, 0x0, cid);
		(void) FUNC17(he_dev, cid);		/* flush posted writes */
		FUNC44(&he_dev->global_lock, flags);
	}

	if (vcc->qos.rxtp.traffic_class != ATM_NONE) {
		unsigned aal;

		FUNC2("open rx cid 0x%x (rx_waitq %p)\n", cid,
		 				&FUNC1(vcc)->rx_waitq);

		switch (vcc->qos.aal) {
			case ATM_AAL5:
				aal = RSR0_AAL5;
				break;
			case ATM_AAL0:
				aal = RSR0_RAWCELL;
				break;
			default:
				err = -EINVAL;
				goto open_failed;
		}

		FUNC43(&he_dev->global_lock, flags);

		rsr0 = FUNC16(he_dev, cid);
		if (rsr0 & RSR0_OPEN_CONN) {
			FUNC44(&he_dev->global_lock, flags);

			FUNC37("cid 0x%x not idle (rsr0 = 0x%x)\n", cid, rsr0);
			err = -EBUSY;
			goto open_failed;
		}

		rsr1 = FUNC4(0) | RSR1_RBPL_ONLY;
		rsr4 = FUNC5(0) | RSR4_RBPL_ONLY;
		rsr0 = vcc->qos.rxtp.traffic_class == ATM_UBR ? 
				(RSR0_EPD_ENABLE|RSR0_PPD_ENABLE) : 0;

#ifdef USE_CHECKSUM_HW
		if (vpi == 0 && vci >= ATM_NOT_RSV_VCI)
			rsr0 |= RSR0_TCP_CKSUM;
#endif

		FUNC21(he_dev, rsr4, cid);
		FUNC20(he_dev, rsr1, cid);
		/* 5.1.11 last parameter initialized should be
			  the open/closed indication in rsr0 */
		FUNC19(he_dev,
			rsr0 | RSR0_START_PDU | RSR0_OPEN_CONN | aal, cid);
		(void) FUNC16(he_dev, cid);		/* flush posted writes */

		FUNC44(&he_dev->global_lock, flags);
	}

open_failed:

	if (err) {
		FUNC39(he_vcc);
		FUNC13(ATM_VF_ADDR, &vcc->flags);
	}
	else
		FUNC42(ATM_VF_READY, &vcc->flags);

	return err;
}