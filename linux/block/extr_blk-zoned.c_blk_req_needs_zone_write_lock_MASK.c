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
struct request {TYPE_1__* q; } ;
struct TYPE_2__ {int /*<<< orphan*/  seq_zones_wlock; } ;

/* Variables and functions */
#define  REQ_OP_WRITE 130 
#define  REQ_OP_WRITE_SAME 129 
#define  REQ_OP_WRITE_ZEROES 128 
 scalar_t__ FUNC0 (struct request*) ; 
 int FUNC1 (struct request*) ; 
 int FUNC2 (struct request*) ; 

bool FUNC3(struct request *rq)
{
	if (!rq->q->seq_zones_wlock)
		return false;

	if (FUNC0(rq))
		return false;

	switch (FUNC2(rq)) {
	case REQ_OP_WRITE_ZEROES:
	case REQ_OP_WRITE_SAME:
	case REQ_OP_WRITE:
		return FUNC1(rq);
	default:
		return false;
	}
}