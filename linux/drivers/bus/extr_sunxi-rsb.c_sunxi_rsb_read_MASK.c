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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sunxi_rsb {int /*<<< orphan*/  lock; scalar_t__ regs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ RSB_ADDR ; 
 scalar_t__ RSB_CMD ; 
 int /*<<< orphan*/  RSB_CMD_RD16 ; 
 int /*<<< orphan*/  RSB_CMD_RD32 ; 
 int /*<<< orphan*/  RSB_CMD_RD8 ; 
 scalar_t__ RSB_DAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RSB_DATA ; 
 int FUNC1 (struct sunxi_rsb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
			  u32 *buf, size_t len)
{
	u32 cmd;
	int ret;

	if (!buf)
		return -EINVAL;

	switch (len) {
	case 1:
		cmd = RSB_CMD_RD8;
		break;
	case 2:
		cmd = RSB_CMD_RD16;
		break;
	case 4:
		cmd = RSB_CMD_RD32;
		break;
	default:
		FUNC2(rsb->dev, "Invalid access width: %zd\n", len);
		return -EINVAL;
	}

	FUNC3(&rsb->lock);

	FUNC6(addr, rsb->regs + RSB_ADDR);
	FUNC6(FUNC0(rtaddr), rsb->regs + RSB_DAR);
	FUNC6(cmd, rsb->regs + RSB_CMD);

	ret = FUNC1(rsb);
	if (ret)
		goto unlock;

	*buf = FUNC5(rsb->regs + RSB_DATA);

unlock:
	FUNC4(&rsb->lock);

	return ret;
}