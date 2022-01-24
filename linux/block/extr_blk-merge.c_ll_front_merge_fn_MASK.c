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
struct request {int /*<<< orphan*/  q; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*,struct bio*) ; 
 int FUNC5 (struct request*,struct bio*,unsigned int) ; 
 scalar_t__ FUNC6 (struct request*,struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct request*) ; 

int FUNC8(struct request *req, struct bio *bio, unsigned int nr_segs)
{
	if (FUNC6(req, bio))
		return 0;
	if (FUNC1(req) &&
	    FUNC4(req, bio))
		return 0;
	if (FUNC3(req) + FUNC0(bio) >
	    FUNC2(req, bio->bi_iter.bi_sector)) {
		FUNC7(req->q, req);
		return 0;
	}

	return FUNC5(req, bio, nr_segs);
}