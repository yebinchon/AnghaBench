#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u16 ;
struct btmrvl_sdio_card {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ FIRMWARE_READY ; 
 int FUNC0 (struct btmrvl_sdio_card*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct btmrvl_sdio_card *card,
								int pollnum)
{
	u16 firmwarestat;
	int tries, ret;

	 /* Wait for firmware to become ready */
	for (tries = 0; tries < pollnum; tries++) {
		FUNC2(card->func);
		ret = FUNC0(card, &firmwarestat);
		FUNC3(card->func);
		if (ret < 0)
			continue;

		if (firmwarestat == FIRMWARE_READY)
			return 0;

		FUNC1(100);
	}

	return -ETIMEDOUT;
}