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
struct request {unsigned short nr_phys_segments; int /*<<< orphan*/  bio; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct request*,int /*<<< orphan*/ ) ; 
 unsigned short FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*) ; 
 unsigned short FUNC5 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*,struct request*) ; 

__attribute__((used)) static bool FUNC7(struct request_queue *q, struct request *req,
		struct request *next)
{
	unsigned short segments = FUNC2(req);

	if (segments >= FUNC5(q))
		goto no_merge;
	if (FUNC4(req) + FUNC0(next->bio) >
	    FUNC1(req, FUNC3(req)))
		goto no_merge;

	req->nr_phys_segments = segments + FUNC2(next);
	return true;
no_merge:
	FUNC6(q, req);
	return false;
}