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
struct request_queue {int /*<<< orphan*/  bio_split; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {TYPE_1__ bi_iter; int /*<<< orphan*/  bi_opf; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_QUEUE_ENTERED ; 
 int /*<<< orphan*/  REQ_NOMERGE ; 
#define  REQ_OP_DISCARD 131 
#define  REQ_OP_SECURE_ERASE 130 
#define  REQ_OP_WRITE_SAME 129 
#define  REQ_OP_WRITE_ZEROES 128 
 int /*<<< orphan*/  FUNC0 (struct bio*,struct bio*) ; 
 int FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC3 (struct request_queue*,struct bio*,int /*<<< orphan*/ *,unsigned int*) ; 
 struct bio* FUNC4 (struct request_queue*,struct bio*,int /*<<< orphan*/ *,unsigned int*) ; 
 struct bio* FUNC5 (struct request_queue*,struct bio*,int /*<<< orphan*/ *,unsigned int*) ; 
 struct bio* FUNC6 (struct request_queue*,struct bio*,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*,struct bio*,int /*<<< orphan*/ ) ; 

void FUNC9(struct request_queue *q, struct bio **bio,
		unsigned int *nr_segs)
{
	struct bio *split;

	switch (FUNC1(*bio)) {
	case REQ_OP_DISCARD:
	case REQ_OP_SECURE_ERASE:
		split = FUNC3(q, *bio, &q->bio_split, nr_segs);
		break;
	case REQ_OP_WRITE_ZEROES:
		split = FUNC6(q, *bio, &q->bio_split,
				nr_segs);
		break;
	case REQ_OP_WRITE_SAME:
		split = FUNC5(q, *bio, &q->bio_split,
				nr_segs);
		break;
	default:
		split = FUNC4(q, *bio, &q->bio_split, nr_segs);
		break;
	}

	if (split) {
		/* there isn't chance to merge the splitted bio */
		split->bi_opf |= REQ_NOMERGE;

		/*
		 * Since we're recursing into make_request here, ensure
		 * that we mark this bio as already having entered the queue.
		 * If not, and the queue is going away, we can get stuck
		 * forever on waiting for the queue reference to drop. But
		 * that will never happen, as we're already holding a
		 * reference to it.
		 */
		FUNC2(*bio, BIO_QUEUE_ENTERED);

		FUNC0(split, *bio);
		FUNC8(q, split, (*bio)->bi_iter.bi_sector);
		FUNC7(*bio);
		*bio = split;
	}
}