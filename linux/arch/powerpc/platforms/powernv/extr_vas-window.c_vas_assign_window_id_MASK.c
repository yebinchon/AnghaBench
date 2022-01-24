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
struct ida {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ VAS_WINDOWS_PER_CHIP ; 
 int FUNC0 (struct ida*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct ida *ida)
{
	int winid = FUNC0(ida, VAS_WINDOWS_PER_CHIP - 1, GFP_KERNEL);

	if (winid == -ENOSPC) {
		FUNC1("Too many (%d) open windows\n", VAS_WINDOWS_PER_CHIP);
		return -EAGAIN;
	}

	return winid;
}