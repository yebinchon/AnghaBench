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
typedef  scalar_t__ u8 ;
struct btmrvl_sdio_card {int /*<<< orphan*/  func; scalar_t__ helper; TYPE_1__* reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  card_fw_status0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int MAX_POLL_TRIES ; 
 scalar_t__ FUNC2 (struct btmrvl_sdio_card*) ; 
 int FUNC3 (struct btmrvl_sdio_card*) ; 
 scalar_t__ FUNC4 (struct btmrvl_sdio_card*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct btmrvl_sdio_card *card)
{
	int ret;
	u8 fws0;
	int pollnum = MAX_POLL_TRIES;

	if (!card || !card->func) {
		FUNC1("card or function is NULL!");
		return -EINVAL;
	}

	if (!FUNC4(card, 1)) {
		FUNC0("Firmware already downloaded!");
		return 0;
	}

	FUNC5(card->func);

	/* Check if other function driver is downloading the firmware */
	fws0 = FUNC6(card->func, card->reg->card_fw_status0, &ret);
	if (ret) {
		FUNC1("Failed to read FW downloading status!");
		ret = -EIO;
		goto done;
	}
	if (fws0) {
		FUNC0("BT not the winner (%#x). Skip FW downloading", fws0);

		/* Give other function more time to download the firmware */
		pollnum *= 10;
	} else {
		if (card->helper) {
			ret = FUNC3(card);
			if (ret) {
				FUNC1("Failed to download helper!");
				ret = -EIO;
				goto done;
			}
		}

		if (FUNC2(card)) {
			FUNC1("Failed to download firmware!");
			ret = -EIO;
			goto done;
		}
	}

	/*
	 * winner or not, with this test the FW synchronizes when the
	 * module can continue its initialization
	 */
	if (FUNC4(card, pollnum)) {
		FUNC1("FW failed to be active in time!");
		ret = -ETIMEDOUT;
		goto done;
	}

	FUNC7(card->func);

	return 0;

done:
	FUNC7(card->func);
	return ret;
}