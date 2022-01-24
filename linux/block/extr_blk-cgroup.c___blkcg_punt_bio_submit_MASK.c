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
struct blkcg_gq {int /*<<< orphan*/  async_bio_work; int /*<<< orphan*/  async_bio_lock; int /*<<< orphan*/  async_bios; int /*<<< orphan*/  parent; } ;
struct bio {int /*<<< orphan*/  bi_opf; struct blkcg_gq* bi_blkg; } ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_CGROUP_PUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  blkcg_punt_bio_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(struct bio *bio)
{
	struct blkcg_gq *blkg = bio->bi_blkg;

	/* consume the flag first */
	bio->bi_opf &= ~REQ_CGROUP_PUNT;

	/* never bounce for the root cgroup */
	if (!blkg->parent)
		return false;

	FUNC2(&blkg->async_bio_lock);
	FUNC0(&blkg->async_bios, bio);
	FUNC3(&blkg->async_bio_lock);

	FUNC1(blkcg_punt_bio_wq, &blkg->async_bio_work);
	return true;
}