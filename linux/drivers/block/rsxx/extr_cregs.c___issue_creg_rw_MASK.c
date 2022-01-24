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
struct TYPE_2__ {int q_depth; } ;
struct rsxx_cardinfo {scalar_t__ regmap; TYPE_1__ creg_ctrl; } ;
struct creg_completion {int st; unsigned int creg_status; int /*<<< orphan*/ * cmd_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int CREG_TIMEOUT_MSEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 scalar_t__ SCRATCH ; 
 int /*<<< orphan*/  cmd_done ; 
 int /*<<< orphan*/  creg_cmd_done_cb ; 
 int FUNC2 (struct rsxx_cardinfo*,unsigned int,unsigned int,unsigned int,void*,int,int /*<<< orphan*/ ,struct creg_completion*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 unsigned long FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct rsxx_cardinfo *card,
			   unsigned int op,
			   unsigned int addr,
			   unsigned int cnt8,
			   void *buf,
			   int stream,
			   unsigned int *hw_stat)
{
	FUNC1(cmd_done);
	struct creg_completion completion;
	unsigned long timeout;
	int st;

	completion.cmd_done = &cmd_done;
	completion.st = 0;
	completion.creg_status = 0;

	st = FUNC2(card, op, addr, cnt8, buf, stream, creg_cmd_done_cb,
			    &completion);
	if (st)
		return st;

	/*
	 * This timeout is necessary for unresponsive hardware. The additional
	 * 20 seconds to used to guarantee that each cregs requests has time to
	 * complete.
	 */
	timeout = FUNC7(CREG_TIMEOUT_MSEC *
				   card->creg_ctrl.q_depth + 20000);

	/*
	 * The creg interface is guaranteed to complete. It has a timeout
	 * mechanism that will kick in if hardware does not respond.
	 */
	st = FUNC8(completion.cmd_done, timeout);
	if (st == 0) {
		/*
		 * This is really bad, because the kernel timer did not
		 * expire and notify us of a timeout!
		 */
		FUNC4(FUNC0(card),
			"cregs timer failed\n");
		FUNC3(card);
		return -EIO;
	}

	*hw_stat = completion.creg_status;

	if (completion.st) {
		/*
		* This read is needed to verify that there has not been any
		* extreme errors that might have occurred, i.e. EEH. The
		* function iowrite32 will not detect EEH errors, so it is
		* necessary that we recover if such an error is the reason
		* for the timeout. This is a dummy read.
		*/
		FUNC6(card->regmap + SCRATCH);

		FUNC5(FUNC0(card),
			"creg command failed(%d x%08x)\n",
			completion.st, addr);
		return completion.st;
	}

	return 0;
}