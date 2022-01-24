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
typedef  unsigned long u32 ;
struct lpc_cycle_para {int opflags; } ;
struct hisi_lpc_dev {int /*<<< orphan*/  cycle_lock; scalar_t__ membase; } ;

/* Variables and functions */
 int EINVAL ; 
 int FG_INCRADDR_LPC ; 
 unsigned int LPC_MAX_WAITCNT ; 
 unsigned int LPC_PEROP_WAITCNT ; 
 scalar_t__ LPC_REG_ADDR ; 
 scalar_t__ LPC_REG_CMD ; 
 unsigned long LPC_REG_CMD_OP ; 
 unsigned long LPC_REG_CMD_SAMEADDR ; 
 scalar_t__ LPC_REG_OP_LEN ; 
 scalar_t__ LPC_REG_STARTUP_SIGNAL ; 
 int /*<<< orphan*/  LPC_REG_STARTUP_SIGNAL_START ; 
 scalar_t__ LPC_REG_WDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned char const*,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct hisi_lpc_dev *lpcdev,
			       struct lpc_cycle_para *para, unsigned long addr,
			       const unsigned char *buf, unsigned long opcnt)
{
	unsigned int waitcnt;
	unsigned long flags;
	u32 cmd_word;
	int ret;

	if (!buf || !opcnt || !para || !lpcdev)
		return -EINVAL;

	/* default is increasing address */
	cmd_word = LPC_REG_CMD_OP; /* IO mode, write */
	waitcnt = LPC_PEROP_WAITCNT;
	if (!(para->opflags & FG_INCRADDR_LPC)) {
		cmd_word |= LPC_REG_CMD_SAMEADDR;
		waitcnt = LPC_MAX_WAITCNT;
	}

	FUNC0(&lpcdev->cycle_lock, flags);

	FUNC4(opcnt, lpcdev->membase + LPC_REG_OP_LEN);
	FUNC4(cmd_word, lpcdev->membase + LPC_REG_CMD);
	FUNC4(addr, lpcdev->membase + LPC_REG_ADDR);

	FUNC5(lpcdev->membase + LPC_REG_WDATA, buf, opcnt);

	FUNC3(LPC_REG_STARTUP_SIGNAL_START,
	       lpcdev->membase + LPC_REG_STARTUP_SIGNAL);

	/* whether the operation is finished */
	ret = FUNC2(lpcdev->membase, waitcnt);

	FUNC1(&lpcdev->cycle_lock, flags);

	return ret;
}