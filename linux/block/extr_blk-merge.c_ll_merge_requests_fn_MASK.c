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
struct request {int nr_phys_segments; int /*<<< orphan*/  bio; } ;

/* Variables and functions */
 int FUNC0 (struct request_queue*,struct request*,struct request*) ; 
 scalar_t__ FUNC1 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 int FUNC4 (struct request_queue*) ; 
 scalar_t__ FUNC5 (struct request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct request_queue *q, struct request *req,
				struct request *next)
{
	int total_phys_segments;

	if (FUNC5(req, next->bio))
		return 0;

	/*
	 * Will it become too large?
	 */
	if ((FUNC3(req) + FUNC3(next)) >
	    FUNC1(req, FUNC2(req)))
		return 0;

	total_phys_segments = req->nr_phys_segments + next->nr_phys_segments;
	if (total_phys_segments > FUNC4(q))
		return 0;

	if (FUNC0(q, req, next) == false)
		return 0;

	/* Merge is OK... */
	req->nr_phys_segments = total_phys_segments;
	return 1;
}