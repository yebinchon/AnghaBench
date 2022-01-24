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
struct TYPE_2__ {scalar_t__ async_suspend; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 scalar_t__ pm_async_enabled ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static bool FUNC1(struct device *dev)
{
	return dev->power.async_suspend && pm_async_enabled
		&& !FUNC0();
}