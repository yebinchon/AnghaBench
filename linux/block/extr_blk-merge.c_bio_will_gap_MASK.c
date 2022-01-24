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
struct request_queue {int dummy; } ;
struct request {struct bio* bio; } ;
struct bio_vec {int bv_offset; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct request_queue*,struct bio_vec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct bio_vec*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct bio_vec*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 scalar_t__ FUNC4 (struct request_queue*,struct bio_vec*,struct bio_vec*) ; 
 int FUNC5 (struct request_queue*) ; 

__attribute__((used)) static inline bool FUNC6(struct request_queue *q,
		struct request *prev_rq, struct bio *prev, struct bio *next)
{
	struct bio_vec pb, nb;

	if (!FUNC3(prev) || !FUNC5(q))
		return false;

	/*
	 * Don't merge if the 1st bio starts with non-zero offset, otherwise it
	 * is quite difficult to respect the sg gap limit.  We work hard to
	 * merge a huge number of small single bios in case of mkfs.
	 */
	if (prev_rq)
		FUNC1(prev_rq->bio, &pb);
	else
		FUNC1(prev, &pb);
	if (pb.bv_offset & FUNC5(q))
		return true;

	/*
	 * We don't need to worry about the situation that the merged segment
	 * ends in unaligned virt boundary:
	 *
	 * - if 'pb' ends aligned, the merged segment ends aligned
	 * - if 'pb' ends unaligned, the next bio must include
	 *   one single bvec of 'nb', otherwise the 'nb' can't
	 *   merge with 'pb'
	 */
	FUNC2(prev, &pb);
	FUNC1(next, &nb);
	if (FUNC4(q, &pb, &nb))
		return false;
	return FUNC0(q, &pb, nb.bv_offset);
}