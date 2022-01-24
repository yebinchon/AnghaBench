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
struct request {int dummy; } ;
struct bio {struct bio* bi_next; int /*<<< orphan*/  bi_status; } ;
struct TYPE_2__ {struct bio* nxbio; struct request* rq; int /*<<< orphan*/  buf; } ;
struct aoedev {TYPE_1__ ip; } ;
struct aoe_req {int /*<<< orphan*/  nr_bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  FUNC0 (struct aoedev*,struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aoedev*,int /*<<< orphan*/ ) ; 
 struct aoe_req* FUNC2 (struct request*) ; 

__attribute__((used)) static void
FUNC3(struct aoedev *d)
{
	struct request *rq;
	struct aoe_req *req;
	struct bio *bio;

	FUNC1(d, d->ip.buf);
	rq = d->ip.rq;
	if (rq == NULL)
		return;

	req = FUNC2(rq);
	while ((bio = d->ip.nxbio)) {
		bio->bi_status = BLK_STS_IOERR;
		d->ip.nxbio = bio->bi_next;
		req->nr_bios--;
	}

	if (!req->nr_bios)
		FUNC0(d, rq, 0);
}