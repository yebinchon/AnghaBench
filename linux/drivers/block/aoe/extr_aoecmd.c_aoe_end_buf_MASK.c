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
struct buf {struct request* rq; } ;
struct TYPE_2__ {struct buf* buf; } ;
struct aoedev {int /*<<< orphan*/  bufpool; TYPE_1__ ip; } ;
struct aoe_req {scalar_t__ nr_bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aoedev*,struct request*,int /*<<< orphan*/ ) ; 
 struct aoe_req* FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct aoedev *d, struct buf *buf)
{
	struct request *rq = buf->rq;
	struct aoe_req *req = FUNC1(rq);

	if (buf == d->ip.buf)
		d->ip.buf = NULL;
	FUNC2(buf, d->bufpool);
	if (--req->nr_bios == 0)
		FUNC0(d, rq, 0);
}