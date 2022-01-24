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
struct rsxx_cardinfo {scalar_t__ gendisk; int /*<<< orphan*/  eeh_state; } ;
struct rsxx_bio_meta {int /*<<< orphan*/  bio; int /*<<< orphan*/  error; int /*<<< orphan*/  start_time; int /*<<< orphan*/  pending_dmas; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_meta_pool ; 
 int /*<<< orphan*/  FUNC5 (struct rsxx_cardinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct rsxx_bio_meta*) ; 

__attribute__((used)) static void FUNC7(struct rsxx_cardinfo *card,
			    void *cb_data,
			    unsigned int error)
{
	struct rsxx_bio_meta *meta = cb_data;

	if (error)
		FUNC2(&meta->error, 1);

	if (FUNC0(&meta->pending_dmas)) {
		if (!card->eeh_state && card->gendisk)
			FUNC5(card, meta->bio, meta->start_time);

		if (FUNC1(&meta->error))
			FUNC4(meta->bio);
		else
			FUNC3(meta->bio);
		FUNC6(bio_meta_pool, meta);
	}
}