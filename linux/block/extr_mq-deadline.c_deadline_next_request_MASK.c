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
struct request {int /*<<< orphan*/  q; } ;
struct deadline_data {int /*<<< orphan*/  zone_lock; struct request** next_rq; } ;

/* Variables and functions */
 int READ ; 
 scalar_t__ FUNC0 (int) ; 
 int WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 struct request* FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct request *
FUNC6(struct deadline_data *dd, int data_dir)
{
	struct request *rq;
	unsigned long flags;

	if (FUNC0(data_dir != READ && data_dir != WRITE))
		return NULL;

	rq = dd->next_rq[data_dir];
	if (!rq)
		return NULL;

	if (data_dir == READ || !FUNC1(rq->q))
		return rq;

	/*
	 * Look for a write request that can be dispatched, that is one with
	 * an unlocked target zone.
	 */
	FUNC4(&dd->zone_lock, flags);
	while (rq) {
		if (FUNC2(rq))
			break;
		rq = FUNC3(rq);
	}
	FUNC5(&dd->zone_lock, flags);

	return rq;
}