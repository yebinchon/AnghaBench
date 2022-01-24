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
struct swim_priv {int /*<<< orphan*/  lock; } ;
struct request {int /*<<< orphan*/  bio; } ;
struct floppy_state {int /*<<< orphan*/  disk_in; struct swim_priv* swd; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {struct floppy_state* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_DEV_RESOURCE ; 
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 
 scalar_t__ FUNC6 (struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct floppy_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC11(struct blk_mq_hw_ctx *hctx,
				  const struct blk_mq_queue_data *bd)
{
	struct floppy_state *fs = hctx->queue->queuedata;
	struct swim_priv *swd = fs->swd;
	struct request *req = bd->rq;
	blk_status_t err;

	if (!FUNC9(&swd->lock))
		return BLK_STS_DEV_RESOURCE;

	FUNC2(req);

	if (!fs->disk_in || FUNC8(req) == WRITE) {
		err = BLK_STS_IOERR;
		goto out;
	}

	do {
		err = FUNC7(fs, FUNC5(req),
					  FUNC4(req),
					  FUNC1(req->bio));
	} while (FUNC6(req, err, FUNC3(req)));
	FUNC0(req, err);

	err = BLK_STS_OK;
out:
	FUNC10(&swd->lock);
	return err;

}