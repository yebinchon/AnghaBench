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
struct request {struct bio* bio; } ;
struct loop_cmd {scalar_t__ ret; scalar_t__ use_aio; } ;
struct bio {struct bio* bi_next; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 scalar_t__ REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int) ; 
 struct loop_cmd* FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 

__attribute__((used)) static void FUNC7(struct request *rq)
{
	struct loop_cmd *cmd = FUNC2(rq);
	blk_status_t ret = BLK_STS_OK;

	if (!cmd->use_aio || cmd->ret < 0 || cmd->ret == FUNC3(rq) ||
	    FUNC5(rq) != REQ_OP_READ) {
		if (cmd->ret < 0)
			ret = BLK_STS_IOERR;
		goto end_io;
	}

	/*
	 * Short READ - if we got some data, advance our request and
	 * retry it. If we got no data, end the rest with EIO.
	 */
	if (cmd->ret) {
		FUNC4(rq, BLK_STS_OK, cmd->ret);
		cmd->ret = 0;
		FUNC1(rq, true);
	} else {
		if (cmd->use_aio) {
			struct bio *bio = rq->bio;

			while (bio) {
				FUNC6(bio);
				bio = bio->bi_next;
			}
		}
		ret = BLK_STS_IOERR;
end_io:
		FUNC0(rq, ret);
	}
}