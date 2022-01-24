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
struct rsxx_cardinfo {int size8; int bdev_attached; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  gendisk; scalar_t__ config_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ enable_blkdev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(struct rsxx_cardinfo *card)
{
	FUNC2(&card->dev_lock);

	/* The block device requires the stripe size from the config. */
	if (enable_blkdev) {
		if (card->config_valid)
			FUNC4(card->gendisk, card->size8 >> 9);
		else
			FUNC4(card->gendisk, 0);
		FUNC1(FUNC0(card), card->gendisk, NULL);
		card->bdev_attached = 1;
	}

	FUNC3(&card->dev_lock);

	return 0;
}