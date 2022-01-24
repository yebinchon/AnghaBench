#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct btmrvl_sdio_card {TYPE_2__* reg; int /*<<< orphan*/  func; } ;
struct TYPE_3__ {struct btmrvl_sdio_card* card; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;
typedef  enum rdwr_status { ____Placeholder_rdwr_status } rdwr_status ;
struct TYPE_4__ {int /*<<< orphan*/  fw_dump_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FW_DUMP_DONE ; 
 scalar_t__ FW_DUMP_HOST_READY ; 
 int MAX_POLL_TRIES ; 
 int RDWR_STATUS_DONE ; 
 int RDWR_STATUS_FAILURE ; 
 int RDWR_STATUS_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static enum
rdwr_status FUNC5(struct btmrvl_private *priv,
				      u8 doneflag)
{
	struct btmrvl_sdio_card *card = priv->btmrvl_dev.card;
	int ret, tries;
	u8 ctrl_data = 0;

	FUNC3(card->func, FW_DUMP_HOST_READY, card->reg->fw_dump_ctrl,
		    &ret);

	if (ret) {
		FUNC0("SDIO write err");
		return RDWR_STATUS_FAILURE;
	}

	for (tries = 0; tries < MAX_POLL_TRIES; tries++) {
		ctrl_data = FUNC2(card->func, card->reg->fw_dump_ctrl,
				       &ret);

		if (ret) {
			FUNC0("SDIO read err");
			return RDWR_STATUS_FAILURE;
		}

		if (ctrl_data == FW_DUMP_DONE)
			break;
		if (doneflag && ctrl_data == doneflag)
			return RDWR_STATUS_DONE;
		if (ctrl_data != FW_DUMP_HOST_READY) {
			FUNC1("The ctrl reg was changed, re-try again!");
			FUNC3(card->func, FW_DUMP_HOST_READY,
				    card->reg->fw_dump_ctrl, &ret);
			if (ret) {
				FUNC0("SDIO write err");
				return RDWR_STATUS_FAILURE;
			}
		}
		FUNC4(100, 200);
	}

	if (ctrl_data == FW_DUMP_HOST_READY) {
		FUNC0("Fail to pull ctrl_data");
		return RDWR_STATUS_FAILURE;
	}

	return RDWR_STATUS_SUCCESS;
}