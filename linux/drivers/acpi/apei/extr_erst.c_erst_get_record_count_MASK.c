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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ erst_disable ; 
 int /*<<< orphan*/  erst_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

ssize_t FUNC3(void)
{
	ssize_t count;
	unsigned long flags;

	if (erst_disable)
		return -ENODEV;

	FUNC1(&erst_lock, flags);
	count = FUNC0();
	FUNC2(&erst_lock, flags);

	return count;
}