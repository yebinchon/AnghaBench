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
struct xilly_channel {int log2_element_size; int chan_num; scalar_t__* rd_leftovers; int /*<<< orphan*/  wr_mutex; int /*<<< orphan*/  rd_mutex; TYPE_1__* endpoint; } ;
struct file {int f_pos; struct xilly_channel* private_data; } ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  register_mutex; scalar_t__ registers; scalar_t__ fatal_error; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  SEEK_CUR 130 
#define  SEEK_END 129 
#define  SEEK_SET 128 
 scalar_t__ fpga_buf_ctrl_reg ; 
 scalar_t__ fpga_buf_offset_reg ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static loff_t FUNC3(struct file *filp, loff_t offset, int whence)
{
	struct xilly_channel *channel = filp->private_data;
	loff_t pos = filp->f_pos;
	int rc = 0;

	/*
	 * Take both mutexes not allowing interrupts, since it seems like
	 * common applications don't expect an -EINTR here. Besides, multiple
	 * access to a single file descriptor on seekable devices is a mess
	 * anyhow.
	 */

	if (channel->endpoint->fatal_error)
		return -EIO;

	FUNC1(&channel->wr_mutex);
	FUNC1(&channel->rd_mutex);

	switch (whence) {
	case SEEK_SET:
		pos = offset;
		break;
	case SEEK_CUR:
		pos += offset;
		break;
	case SEEK_END:
		pos = offset; /* Going to the end => to the beginning */
		break;
	default:
		rc = -EINVAL;
		goto end;
	}

	/* In any case, we must finish on an element boundary */
	if (pos & ((1 << channel->log2_element_size) - 1)) {
		rc = -EINVAL;
		goto end;
	}

	FUNC1(&channel->endpoint->register_mutex);

	FUNC0(pos >> channel->log2_element_size,
		  channel->endpoint->registers + fpga_buf_offset_reg);

	FUNC0((channel->chan_num << 1) |
		  (6 << 24),  /* Opcode 6, set address */
		  channel->endpoint->registers + fpga_buf_ctrl_reg);

	FUNC2(&channel->endpoint->register_mutex);

end:
	FUNC2(&channel->rd_mutex);
	FUNC2(&channel->wr_mutex);

	if (rc) /* Return error after releasing mutexes */
		return rc;

	filp->f_pos = pos;

	/*
	 * Since seekable devices are allowed only when the channel is
	 * synchronous, we assume that there is no data pending in either
	 * direction (which holds true as long as no concurrent access on the
	 * file descriptor takes place).
	 * The only thing we may need to throw away is leftovers from partial
	 * write() flush.
	 */

	channel->rd_leftovers[3] = 0;

	return pos;
}