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
struct request {int dummy; } ;
struct loop_device {int lo_offset; int /*<<< orphan*/  transfer; } ;
struct loop_cmd {int /*<<< orphan*/  use_aio; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  READ ; 
#define  REQ_OP_DISCARD 132 
#define  REQ_OP_FLUSH 131 
#define  REQ_OP_READ 130 
#define  REQ_OP_WRITE 129 
#define  REQ_OP_WRITE_ZEROES 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WRITE ; 
 struct loop_cmd* FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int FUNC3 (struct loop_device*,struct request*,int) ; 
 int FUNC4 (struct loop_device*,struct request*,int) ; 
 int FUNC5 (struct loop_device*,struct request*,int) ; 
 int FUNC6 (struct loop_device*,struct request*) ; 
 int FUNC7 (struct loop_device*,struct loop_cmd*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct loop_device*,struct request*,int) ; 
 int FUNC9 (struct loop_device*,struct request*,int) ; 
 int FUNC10 (struct request*) ; 

__attribute__((used)) static int FUNC11(struct loop_device *lo, struct request *rq)
{
	struct loop_cmd *cmd = FUNC1(rq);
	loff_t pos = ((loff_t) FUNC2(rq) << 9) + lo->lo_offset;

	/*
	 * lo_write_simple and lo_read_simple should have been covered
	 * by io submit style function like lo_rw_aio(), one blocker
	 * is that lo_read_simple() need to call flush_dcache_page after
	 * the page is written from kernel, and it isn't easy to handle
	 * this in io submit style function which submits all segments
	 * of the req at one time. And direct read IO doesn't need to
	 * run flush_dcache_page().
	 */
	switch (FUNC10(rq)) {
	case REQ_OP_FLUSH:
		return FUNC6(lo, rq);
	case REQ_OP_DISCARD:
	case REQ_OP_WRITE_ZEROES:
		return FUNC3(lo, rq, pos);
	case REQ_OP_WRITE:
		if (lo->transfer)
			return FUNC9(lo, rq, pos);
		else if (cmd->use_aio)
			return FUNC7(lo, cmd, pos, WRITE);
		else
			return FUNC8(lo, rq, pos);
	case REQ_OP_READ:
		if (lo->transfer)
			return FUNC5(lo, rq, pos);
		else if (cmd->use_aio)
			return FUNC7(lo, cmd, pos, READ);
		else
			return FUNC4(lo, rq, pos);
	default:
		FUNC0(1);
		return -EIO;
	}
}