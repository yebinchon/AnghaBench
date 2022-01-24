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
struct pl08x_channel_data {unsigned int min_signal; unsigned int muxval; } ;
struct TYPE_2__ {unsigned int val; scalar_t__ busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CHN_CFG ; 
 int EBUSY ; 
 int /*<<< orphan*/  lock ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* signals ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC4(const struct pl08x_channel_data *cd)
{
	unsigned int signal = cd->min_signal, val;
	unsigned long flags;

	FUNC1(&lock, flags);

	/* Return if signal is already acquired by somebody else */
	if (signals[signal].busy &&
			(signals[signal].val != cd->muxval)) {
		FUNC2(&lock, flags);
		return -EBUSY;
	}

	/* If acquiring for the first time, configure it */
	if (!signals[signal].busy) {
		val = FUNC0(DMA_CHN_CFG);

		/*
		 * Each request line has two bits in DMA_CHN_CFG register. To
		 * goto the bits of current request line, do left shift of
		 * value by 2 * signal number.
		 */
		val &= ~(0x3 << (signal * 2));
		val |= cd->muxval << (signal * 2);
		FUNC3(val, DMA_CHN_CFG);
	}

	signals[signal].busy++;
	signals[signal].val = cd->muxval;
	FUNC2(&lock, flags);

	return signal;
}