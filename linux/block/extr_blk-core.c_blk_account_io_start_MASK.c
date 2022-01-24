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
struct request {struct hd_struct* part; int /*<<< orphan*/  q; TYPE_1__* rq_disk; } ;
struct hd_struct {int dummy; } ;
struct TYPE_2__ {struct hd_struct part0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 struct hd_struct* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct hd_struct*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/ * merges ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct hd_struct*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hd_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct request*) ; 
 int /*<<< orphan*/  FUNC10 (struct hd_struct*,int /*<<< orphan*/ ) ; 

void FUNC11(struct request *rq, bool new_io)
{
	struct hd_struct *part;
	int rw = FUNC9(rq);

	if (!FUNC0(rq))
		return;

	FUNC7();

	if (!new_io) {
		part = rq->part;
		FUNC6(part, merges[rw]);
	} else {
		part = FUNC2(rq->rq_disk, FUNC1(rq));
		if (!FUNC4(part)) {
			/*
			 * The partition is already being removed,
			 * the request will be accounted on the disk only
			 *
			 * We take a reference on disk->part0 although that
			 * partition will never be deleted, so we can treat
			 * it as any other partition.
			 */
			part = &rq->rq_disk->part0;
			FUNC3(part);
		}
		FUNC5(rq->q, part, rw);
		rq->part = part;
	}

	FUNC10(part, jiffies);

	FUNC8();
}