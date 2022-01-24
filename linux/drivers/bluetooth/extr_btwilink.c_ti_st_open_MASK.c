#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ti_st {int reg_status; int /*<<< orphan*/ * st_write; int /*<<< orphan*/  wait_reg_completion; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/ * write; int /*<<< orphan*/  reg_complete_cb; int /*<<< orphan*/  recv; int /*<<< orphan*/  max_frame_size; struct ti_st* priv_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int BT_REGISTER_TIMEOUT ; 
 int EAGAIN ; 
 int EINPROGRESS ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HCI_MAX_FRAME_SIZE ; 
 int MAX_BT_CHNL_IDS ; 
 struct ti_st* FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  st_receive ; 
 int /*<<< orphan*/  st_reg_completion_cb ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 TYPE_1__* ti_st_proto ; 
 unsigned long FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hci_dev *hdev)
{
	unsigned long timeleft;
	struct ti_st *hst;
	int err, i;

	FUNC0("%s %p", hdev->name, hdev);

	/* provide contexts for callbacks from ST */
	hst = FUNC2(hdev);

	for (i = 0; i < MAX_BT_CHNL_IDS; i++) {
		ti_st_proto[i].priv_data = hst;
		ti_st_proto[i].max_frame_size = HCI_MAX_FRAME_SIZE;
		ti_st_proto[i].recv = st_receive;
		ti_st_proto[i].reg_complete_cb = st_reg_completion_cb;

		/* Prepare wait-for-completion handler */
		FUNC3(&hst->wait_reg_completion);
		/* Reset ST registration callback status flag,
		 * this value will be updated in
		 * st_reg_completion_cb()
		 * function whenever it called from ST driver.
		 */
		hst->reg_status = -EINPROGRESS;

		err = FUNC5(&ti_st_proto[i]);
		if (!err)
			goto done;

		if (err != -EINPROGRESS) {
			FUNC1("st_register failed %d", err);
			return err;
		}

		/* ST is busy with either protocol
		 * registration or firmware download.
		 */
		FUNC0("waiting for registration "
				"completion signal from ST");
		timeleft = FUNC7
			(&hst->wait_reg_completion,
			 FUNC4(BT_REGISTER_TIMEOUT));
		if (!timeleft) {
			FUNC1("Timeout(%d sec),didn't get reg "
					"completion signal from ST",
					BT_REGISTER_TIMEOUT / 1000);
			return -ETIMEDOUT;
		}

		/* Is ST registration callback
		 * called with ERROR status?
		 */
		if (hst->reg_status != 0) {
			FUNC1("ST registration completed with invalid "
					"status %d", hst->reg_status);
			return -EAGAIN;
		}

done:
		hst->st_write = ti_st_proto[i].write;
		if (!hst->st_write) {
			FUNC1("undefined ST write function");
			for (i = 0; i < MAX_BT_CHNL_IDS; i++) {
				/* Undo registration with ST */
				err = FUNC6(&ti_st_proto[i]);
				if (err)
					FUNC1("st_unregister() failed with "
							"error %d", err);
				hst->st_write = NULL;
			}
			return -EIO;
		}
	}
	return 0;
}