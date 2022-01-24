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
struct lpc_cycle_para {int opflags; int /*<<< orphan*/  csize; } ;
struct hisi_lpc_dev {int /*<<< orphan*/  cycle_lock; scalar_t__ membase; } ;

/* Variables and functions */
 int EINVAL ; 
 int FG_INCRADDR_LPC ; 
 unsigned int LPC_MAX_WAITCNT ; 
 unsigned int LPC_PEROP_WAITCNT ; 
 scalar_t__ LPC_REG_ADDR ; 
 scalar_t__ LPC_REG_CMD ; 
 unsigned int LPC_REG_CMD_SAMEADDR ; 
 scalar_t__ LPC_REG_OP_LEN ; 
 scalar_t__ LPC_REG_RDATA ; 
 scalar_t__ LPC_REG_STARTUP_SIGNAL ; 
 int /*<<< orphan*/  LPC_REG_STARTUP_SIGNAL_START ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct hisi_lpc_dev *lpcdev,
			      struct lpc_cycle_para *para, unsigned long addr,
			      unsigned char *buf, unsigned long opcnt)
{
	unsigned int cmd_word;
	unsigned int waitcnt;
	unsigned long flags;
	int ret;

	if (!buf || !opcnt || !para || !para->csize || !lpcdev)
		return -EINVAL;

	cmd_word = 0; /* IO mode, Read */
	waitcnt = LPC_PEROP_WAITCNT;
	if (!(para->opflags & FG_INCRADDR_LPC)) {
		cmd_word |= LPC_REG_CMD_SAMEADDR;
		waitcnt = LPC_MAX_WAITCNT;
	}

	/* whole operation must be atomic */
	FUNC1(&lpcdev->cycle_lock, flags);

	FUNC5(opcnt, lpcdev->membase + LPC_REG_OP_LEN);
	FUNC5(cmd_word, lpcdev->membase + LPC_REG_CMD);
	FUNC5(addr, lpcdev->membase + LPC_REG_ADDR);

	FUNC4(LPC_REG_STARTUP_SIGNAL_START,
	       lpcdev->membase + LPC_REG_STARTUP_SIGNAL);

	/* whether the operation is finished */
	ret = FUNC3(lpcdev->membase, waitcnt);
	if (ret) {
		FUNC2(&lpcdev->cycle_lock, flags);
		return ret;
	}

	FUNC0(lpcdev->membase + LPC_REG_RDATA, buf, opcnt);

	FUNC2(&lpcdev->cycle_lock, flags);

	return 0;
}