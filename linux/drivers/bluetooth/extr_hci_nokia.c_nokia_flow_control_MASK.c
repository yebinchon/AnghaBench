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
struct serdev_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct serdev_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct serdev_device*,int) ; 

__attribute__((used)) static void FUNC2(struct serdev_device *serdev, bool enable)
{
	if (enable) {
		FUNC1(serdev, true);
		FUNC0(serdev, true);
	} else {
		FUNC0(serdev, false);
		FUNC1(serdev, false);
	}
}