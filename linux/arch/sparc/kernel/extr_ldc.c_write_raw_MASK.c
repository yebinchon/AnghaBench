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
struct ldc_packet {int dummy; } ;
struct ldc_channel {scalar_t__ chan_state; int /*<<< orphan*/  tx_tail; int /*<<< orphan*/  tx_head; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EMSGSIZE ; 
 int FUNC0 (struct ldc_channel*) ; 
 scalar_t__ LDC_CHANNEL_UP ; 
 unsigned int LDC_PACKET_SIZE ; 
 struct ldc_packet* FUNC1 (struct ldc_channel*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct ldc_packet*,void const*,unsigned int) ; 
 int FUNC3 (struct ldc_channel*,struct ldc_packet*,unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct ldc_channel *lp, const void *buf, unsigned int size)
{
	struct ldc_packet *p;
	unsigned long new_tail, hv_err;
	int err;

	hv_err = FUNC4(lp->id, &lp->tx_head, &lp->tx_tail,
					&lp->chan_state);
	if (FUNC5(hv_err))
		return -EBUSY;

	if (FUNC5(lp->chan_state != LDC_CHANNEL_UP))
		return FUNC0(lp);

	if (size > LDC_PACKET_SIZE)
		return -EMSGSIZE;

	p = FUNC1(lp, &new_tail);
	if (!p)
		return -EAGAIN;

	FUNC2(p, buf, size);

	err = FUNC3(lp, p, new_tail);
	if (!err)
		err = size;

	return err;
}