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
struct proxy_dev {int state; size_t resp_len; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 size_t EIO ; 
 int EPIPE ; 
 int STATE_OPENED_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,size_t) ; 
 struct proxy_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct tpm_chip *chip, u8 *buf, size_t count)
{
	struct proxy_dev *proxy_dev = FUNC1(&chip->dev);
	size_t len;

	/* process gone ? */
	FUNC3(&proxy_dev->buf_lock);

	if (!(proxy_dev->state & STATE_OPENED_FLAG)) {
		FUNC4(&proxy_dev->buf_lock);
		return -EPIPE;
	}

	len = proxy_dev->resp_len;
	if (count < len) {
		FUNC0(&chip->dev,
			"Invalid size in recv: count=%zd, resp_len=%zd\n",
			count, len);
		len = -EIO;
		goto out;
	}

	FUNC2(buf, proxy_dev->buffer, len);
	proxy_dev->resp_len = 0;

out:
	FUNC4(&proxy_dev->buf_lock);

	return len;
}