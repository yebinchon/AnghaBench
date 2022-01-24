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
typedef  int u32 ;
struct reset_controller_dev {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ETIME ; 
 scalar_t__ SRC_SCR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  scr_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ src_base ; 
 int* sw_reset_bits ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct reset_controller_dev *rcdev,
		unsigned long sw_reset_idx)
{
	unsigned long timeout;
	unsigned long flags;
	int bit;
	u32 val;

	if (!src_base)
		return -ENODEV;

	if (sw_reset_idx >= FUNC0(sw_reset_bits))
		return -EINVAL;

	bit = 1 << sw_reset_bits[sw_reset_idx];

	FUNC5(&scr_lock, flags);
	val = FUNC4(src_base + SRC_SCR);
	val |= bit;
	FUNC8(val, src_base + SRC_SCR);
	FUNC6(&scr_lock, flags);

	timeout = jiffies + FUNC2(1000);
	while (FUNC3(src_base + SRC_SCR) & bit) {
		if (FUNC7(jiffies, timeout))
			return -ETIME;
		FUNC1();
	}

	return 0;
}