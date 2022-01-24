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
struct bio {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (struct request*,struct bio*) ; 
 int FUNC6 (struct request*,struct bio*,unsigned int) ; 
 scalar_t__ FUNC7 (struct request*,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct request*) ; 

int FUNC9(struct request *req, struct bio *bio, unsigned int nr_segs)
{
	if (FUNC7(req, bio))
		return 0;
	if (FUNC1(req) &&
	    FUNC5(req, bio))
		return 0;
	if (FUNC4(req) + FUNC0(bio) >
	    FUNC2(req, FUNC3(req))) {
		FUNC8(req->q, req);
		return 0;
	}

	return FUNC6(req, bio, nr_segs);
}