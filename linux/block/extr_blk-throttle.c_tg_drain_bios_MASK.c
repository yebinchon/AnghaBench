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
 int /*<<< orphan*/  FUNC2 (struct throtl_grp*) ; 
 struct bio* FUNC3 (int /*<<< orphan*/ *) ; 
 struct throtl_grp* FUNC4 (struct throtl_service_queue*) ; 

__attribute__((used)) static void FUNC5(struct throtl_service_queue *parent_sq)
{
	struct throtl_grp *tg;

	while ((tg = FUNC4(parent_sq))) {
		struct throtl_service_queue *sq = &tg->service_queue;
		struct bio *bio;

		FUNC2(tg);

		while ((bio = FUNC3(&sq->queued[READ])))
			FUNC1(tg, FUNC0(bio));
		while ((bio = FUNC3(&sq->queued[WRITE])))
			FUNC1(tg, FUNC0(bio));
	}
}