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
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct proxy_dev {int state; size_t req_len; int /*<<< orphan*/  wq; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  buffer; scalar_t__ resp_len; } ;

/* Variables and functions */
 int EFAULT ; 
 int EIO ; 
 int EPIPE ; 
 int STATE_DRIVER_COMMAND ; 
 int STATE_OPENED_FLAG ; 
 int STATE_WAIT_RESPONSE_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,int) ; 
 struct proxy_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct tpm_chip*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct tpm_chip *chip, u8 *buf, size_t count)
{
	struct proxy_dev *proxy_dev = FUNC1(&chip->dev);

	if (count > sizeof(proxy_dev->buffer)) {
		FUNC0(&chip->dev,
			"Invalid size in send: count=%zd, buffer size=%zd\n",
			count, sizeof(proxy_dev->buffer));
		return -EIO;
	}

	if (!(proxy_dev->state & STATE_DRIVER_COMMAND) &&
	    FUNC5(chip, buf, count))
		return -EFAULT;

	FUNC3(&proxy_dev->buf_lock);

	if (!(proxy_dev->state & STATE_OPENED_FLAG)) {
		FUNC4(&proxy_dev->buf_lock);
		return -EPIPE;
	}

	proxy_dev->resp_len = 0;

	proxy_dev->req_len = count;
	FUNC2(proxy_dev->buffer, buf, count);

	proxy_dev->state &= ~STATE_WAIT_RESPONSE_FLAG;

	FUNC4(&proxy_dev->buf_lock);

	FUNC6(&proxy_dev->wq);

	return 0;
}