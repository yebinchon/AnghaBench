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
struct request_queue {int dummy; } ;
struct request {unsigned short nr_phys_segments; int /*<<< orphan*/  __data_len; struct bio* biotail; } ;
struct TYPE_2__ {scalar_t__ bi_size; } ;
struct bio {TYPE_1__ bi_iter; struct bio* bi_next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int) ; 
 scalar_t__ FUNC2 (struct request*,int /*<<< orphan*/ ) ; 
 unsigned short FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (struct request*) ; 
 unsigned short FUNC6 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*,struct request*,struct bio*) ; 

bool FUNC9(struct request_queue *q, struct request *req,
		struct bio *bio)
{
	unsigned short segments = FUNC3(req);

	if (segments >= FUNC6(q))
		goto no_merge;
	if (FUNC5(req) + FUNC0(bio) >
	    FUNC2(req, FUNC4(req)))
		goto no_merge;

	FUNC8(q, req, bio);

	req->biotail->bi_next = bio;
	req->biotail = bio;
	req->__data_len += bio->bi_iter.bi_size;
	req->nr_phys_segments = segments + 1;

	FUNC1(req, false);
	return true;
no_merge:
	FUNC7(q, req);
	return false;
}