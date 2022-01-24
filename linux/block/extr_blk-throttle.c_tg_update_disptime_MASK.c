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
struct throtl_service_queue {int /*<<< orphan*/ * queued; } ;
struct throtl_grp {unsigned long disptime; int /*<<< orphan*/  flags; struct throtl_service_queue service_queue; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 size_t READ ; 
 int /*<<< orphan*/  THROTL_TG_WAS_EMPTY ; 
 size_t WRITE ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct throtl_grp*,struct bio*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC3 (struct throtl_grp*) ; 
 struct bio* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct throtl_grp *tg)
{
	struct throtl_service_queue *sq = &tg->service_queue;
	unsigned long read_wait = -1, write_wait = -1, min_wait = -1, disptime;
	struct bio *bio;

	bio = FUNC4(&sq->queued[READ]);
	if (bio)
		FUNC1(tg, bio, &read_wait);

	bio = FUNC4(&sq->queued[WRITE]);
	if (bio)
		FUNC1(tg, bio, &write_wait);

	min_wait = FUNC0(read_wait, write_wait);
	disptime = jiffies + min_wait;

	/* Update dispatch time */
	FUNC2(tg);
	tg->disptime = disptime;
	FUNC3(tg);

	/* see throtl_add_bio_tg() */
	tg->flags &= ~THROTL_TG_WAS_EMPTY;
}