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
struct deadline_data {int /*<<< orphan*/ ** next_rq; } ;

/* Variables and functions */
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/ * FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request*) ; 
 int FUNC2 (struct request*) ; 

__attribute__((used)) static void
FUNC3(struct deadline_data *dd, struct request *rq)
{
	const int data_dir = FUNC2(rq);

	dd->next_rq[READ] = NULL;
	dd->next_rq[WRITE] = NULL;
	dd->next_rq[data_dir] = FUNC0(rq);

	/*
	 * take it off the sort and fifo list
	 */
	FUNC1(rq->q, rq);
}