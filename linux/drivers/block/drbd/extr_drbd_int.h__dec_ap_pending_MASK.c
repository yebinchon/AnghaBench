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
struct drbd_device {int /*<<< orphan*/  misc_wait; int /*<<< orphan*/  ap_pending_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  ap_pending_cnt ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct drbd_device *device, const char *func, int line)
{
	if (FUNC1(&device->ap_pending_cnt))
		FUNC2(&device->misc_wait);
	FUNC0(ap_pending_cnt, func, line);
}