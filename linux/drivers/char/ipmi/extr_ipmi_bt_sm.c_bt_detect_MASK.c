#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct si_sm_data {unsigned char BT_CAP_req2rsp; unsigned char BT_CAP_retries; TYPE_1__* io; } ;
typedef  enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  GetBT_CAP ;
typedef  int /*<<< orphan*/  BT_CAP ;

/* Variables and functions */
 int BT_INTMASK_R ; 
 int BT_STATUS ; 
 int SI_SM_CALL_WITHOUT_DELAY ; 
 int SI_SM_CALL_WITH_DELAY ; 
 int SI_SM_CALL_WITH_TICK_DELAY ; 
 unsigned char USEC_PER_SEC ; 
 int FUNC0 (struct si_sm_data*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct si_sm_data*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct si_sm_data*,TYPE_1__*) ; 
 int FUNC3 (struct si_sm_data*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct si_sm_data*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct si_sm_data *bt)
{
	unsigned char GetBT_CAP[] = { 0x18, 0x36 };
	unsigned char BT_CAP[8];
	enum si_sm_result smi_result;
	int rv;

	/*
	 * It's impossible for the BT status and interrupt registers to be
	 * all 1's, (assuming a properly functioning, self-initialized BMC)
	 * but that's what you get from reading a bogus address, so we
	 * test that first.  The calling routine uses negative logic.
	 */

	if ((BT_STATUS == 0xFF) && (BT_INTMASK_R == 0xFF))
		return 1;
	FUNC7(bt);

	/*
	 * Try getting the BT capabilities here.
	 */
	rv = FUNC3(bt, GetBT_CAP, sizeof(GetBT_CAP));
	if (rv) {
		FUNC5(bt->io->dev,
			 "Can't start capabilities transaction: %d\n", rv);
		goto out_no_bt_cap;
	}

	smi_result = SI_SM_CALL_WITHOUT_DELAY;
	for (;;) {
		if (smi_result == SI_SM_CALL_WITH_DELAY ||
		    smi_result == SI_SM_CALL_WITH_TICK_DELAY) {
			FUNC8(1);
			smi_result = FUNC0(bt, FUNC6(1));
		} else if (smi_result == SI_SM_CALL_WITHOUT_DELAY) {
			smi_result = FUNC0(bt, 0);
		} else
			break;
	}

	rv = FUNC1(bt, BT_CAP, sizeof(BT_CAP));
	FUNC2(bt, bt->io);
	if (rv < 8) {
		FUNC5(bt->io->dev, "bt cap response too short: %d\n", rv);
		goto out_no_bt_cap;
	}

	if (BT_CAP[2]) {
		FUNC5(bt->io->dev, "Error fetching bt cap: %x\n", BT_CAP[2]);
out_no_bt_cap:
		FUNC5(bt->io->dev, "using default values\n");
	} else {
		bt->BT_CAP_req2rsp = BT_CAP[6] * USEC_PER_SEC;
		bt->BT_CAP_retries = BT_CAP[7];
	}

	FUNC4(bt->io->dev, "req2rsp=%ld secs retries=%d\n",
		 bt->BT_CAP_req2rsp / USEC_PER_SEC, bt->BT_CAP_retries);

	return 0;
}