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
typedef  scalar_t__ u64 ;
struct vas_window {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  VAS_WIN_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIN_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct vas_window*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vas_window *window)
{
	int busy;
	u64 val;

retry:
	val = FUNC3(window, FUNC1(WIN_STATUS));
	busy = FUNC0(VAS_WIN_BUSY, val);
	if (busy) {
		val = 0;
		FUNC5(TASK_UNINTERRUPTIBLE);
		FUNC4(FUNC2(5));
		goto retry;
	}
}