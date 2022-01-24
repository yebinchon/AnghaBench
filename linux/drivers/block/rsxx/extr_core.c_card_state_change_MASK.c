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
struct rsxx_cardinfo {unsigned int state; int size8; int /*<<< orphan*/  gendisk; scalar_t__ config_valid; } ;

/* Variables and functions */
#define  CARD_STATE_DSTROYING 136 
#define  CARD_STATE_FAULT 135 
#define  CARD_STATE_FORMATTING 134 
#define  CARD_STATE_GOOD 133 
#define  CARD_STATE_RD_ONLY_FAULT 132 
#define  CARD_STATE_SHUTDOWN 131 
#define  CARD_STATE_SHUTTING_DOWN 130 
#define  CARD_STATE_STARTING 129 
#define  CARD_STATE_UNINITIALIZED 128 
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int FUNC5 (struct rsxx_cardinfo*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct rsxx_cardinfo *card,
			      unsigned int new_state)
{
	int st;

	FUNC3(FUNC0(card),
		"card state change detected.(%s -> %s)\n",
		FUNC4(card->state),
		FUNC4(new_state));

	card->state = new_state;

	/* Don't attach DMA interfaces if the card has an invalid config */
	if (!card->config_valid)
		return;

	switch (new_state) {
	case CARD_STATE_RD_ONLY_FAULT:
		FUNC1(FUNC0(card),
			"Hardware has entered read-only mode!\n");
		/*
		 * Fall through so the DMA devices can be attached and
		 * the user can attempt to pull off their data.
		 */
		/* fall through */
	case CARD_STATE_GOOD:
		st = FUNC5(card, &card->size8);
		if (st)
			FUNC2(FUNC0(card),
				"Failed attaching DMA devices\n");

		if (card->config_valid)
			FUNC6(card->gendisk, card->size8 >> 9);
		break;

	case CARD_STATE_FAULT:
		FUNC1(FUNC0(card),
			"Hardware Fault reported!\n");
		/* Fall through. */

	/* Everything else, detach DMA interface if it's attached. */
	case CARD_STATE_SHUTDOWN:
	case CARD_STATE_STARTING:
	case CARD_STATE_FORMATTING:
	case CARD_STATE_UNINITIALIZED:
	case CARD_STATE_SHUTTING_DOWN:
	/*
	 * dStroy is a term coined by marketing to represent the low level
	 * secure erase.
	 */
	case CARD_STATE_DSTROYING:
		FUNC6(card->gendisk, 0);
		break;
	}
}