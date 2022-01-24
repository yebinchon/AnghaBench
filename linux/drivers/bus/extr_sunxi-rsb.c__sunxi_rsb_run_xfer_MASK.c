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
struct sunxi_rsb {int status; int /*<<< orphan*/  dev; scalar_t__ regs; int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 scalar_t__ RSB_CTRL ; 
 int RSB_CTRL_ABORT_TRANS ; 
 int RSB_CTRL_GLOBAL_INT_ENB ; 
 int RSB_CTRL_START_TRANS ; 
 scalar_t__ RSB_INTE ; 
 scalar_t__ RSB_INTS ; 
 int RSB_INTS_LOAD_BSY ; 
 int RSB_INTS_TRANS_ERR ; 
 int RSB_INTS_TRANS_ERR_ACK ; 
 int RSB_INTS_TRANS_ERR_DATA ; 
 int RSB_INTS_TRANS_OVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct sunxi_rsb *rsb)
{
	if (FUNC2(rsb->regs + RSB_CTRL) & RSB_CTRL_START_TRANS) {
		FUNC0(rsb->dev, "RSB transfer still in progress\n");
		return -EBUSY;
	}

	FUNC3(&rsb->complete);

	FUNC5(RSB_INTS_LOAD_BSY | RSB_INTS_TRANS_ERR | RSB_INTS_TRANS_OVER,
	       rsb->regs + RSB_INTE);
	FUNC5(RSB_CTRL_START_TRANS | RSB_CTRL_GLOBAL_INT_ENB,
	       rsb->regs + RSB_CTRL);

	if (!FUNC4(&rsb->complete,
					    FUNC1(100))) {
		FUNC0(rsb->dev, "RSB timeout\n");

		/* abort the transfer */
		FUNC5(RSB_CTRL_ABORT_TRANS, rsb->regs + RSB_CTRL);

		/* clear any interrupt flags */
		FUNC5(FUNC2(rsb->regs + RSB_INTS), rsb->regs + RSB_INTS);

		return -ETIMEDOUT;
	}

	if (rsb->status & RSB_INTS_LOAD_BSY) {
		FUNC0(rsb->dev, "RSB busy\n");
		return -EBUSY;
	}

	if (rsb->status & RSB_INTS_TRANS_ERR) {
		if (rsb->status & RSB_INTS_TRANS_ERR_ACK) {
			FUNC0(rsb->dev, "RSB slave nack\n");
			return -EINVAL;
		}

		if (rsb->status & RSB_INTS_TRANS_ERR_DATA) {
			FUNC0(rsb->dev, "RSB transfer data error\n");
			return -EIO;
		}
	}

	return 0;
}