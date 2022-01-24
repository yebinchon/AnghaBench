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
struct throtl_grp {struct throtl_service_queue service_queue; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct throtl_grp*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct throtl_grp*,struct bio*,int /*<<< orphan*/ *) ; 
 int throtl_grp_quantum ; 
 struct bio* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct throtl_grp *tg)
{
	struct throtl_service_queue *sq = &tg->service_queue;
	unsigned int nr_reads = 0, nr_writes = 0;
	unsigned int max_nr_reads = throtl_grp_quantum*3/4;
	unsigned int max_nr_writes = throtl_grp_quantum - max_nr_reads;
	struct bio *bio;

	/* Try to dispatch 75% READS and 25% WRITES */

	while ((bio = FUNC3(&sq->queued[READ])) &&
	       FUNC2(tg, bio, NULL)) {

		FUNC1(tg, FUNC0(bio));
		nr_reads++;

		if (nr_reads >= max_nr_reads)
			break;
	}

	while ((bio = FUNC3(&sq->queued[WRITE])) &&
	       FUNC2(tg, bio, NULL)) {

		FUNC1(tg, FUNC0(bio));
		nr_writes++;

		if (nr_writes >= max_nr_writes)
			break;
	}

	return nr_reads + nr_writes;
}