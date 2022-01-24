#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ max_integrity_segments; } ;
struct request_queue {TYPE_1__ limits; } ;
struct request {scalar_t__ nr_integrity_segments; struct bio* bio; } ;
struct bio {struct bio* bi_next; } ;
struct TYPE_4__ {scalar_t__ bip_flags; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 int FUNC2 (struct request_queue*,struct bio*) ; 

bool FUNC3(struct request_queue *q, struct request *req,
			     struct bio *bio)
{
	int nr_integrity_segs;
	struct bio *next = bio->bi_next;

	if (FUNC1(req) == 0 && FUNC0(bio) == NULL)
		return true;

	if (FUNC1(req) == 0 || FUNC0(bio) == NULL)
		return false;

	if (FUNC0(req->bio)->bip_flags != FUNC0(bio)->bip_flags)
		return false;

	bio->bi_next = NULL;
	nr_integrity_segs = FUNC2(q, bio);
	bio->bi_next = next;

	if (req->nr_integrity_segments + nr_integrity_segs >
	    q->limits.max_integrity_segments)
		return false;

	req->nr_integrity_segments += nr_integrity_segs;

	return true;
}