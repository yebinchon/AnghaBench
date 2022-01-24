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
struct sa1111_dev {int dummy; } ;
struct sa1111 {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 int SA1111_AUDIO_I2S ; 
 scalar_t__ SA1111_SKCR ; 
 unsigned int SKCR_SELAC ; 
 unsigned int FUNC0 (scalar_t__) ; 
 struct sa1111* FUNC1 (struct sa1111_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

void FUNC5(struct sa1111_dev *sadev, int mode)
{
	struct sa1111 *sachip = FUNC1(sadev);
	unsigned long flags;
	unsigned int val;

	FUNC2(&sachip->lock, flags);

	val = FUNC0(sachip->base + SA1111_SKCR);
	if (mode == SA1111_AUDIO_I2S) {
		val &= ~SKCR_SELAC;
	} else {
		val |= SKCR_SELAC;
	}
	FUNC4(val, sachip->base + SA1111_SKCR);

	FUNC3(&sachip->lock, flags);
}