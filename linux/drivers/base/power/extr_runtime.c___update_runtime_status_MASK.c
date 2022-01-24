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
struct TYPE_2__ {int runtime_status; } ;
struct device {TYPE_1__ power; } ;
typedef  enum rpm_status { ____Placeholder_rpm_status } rpm_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 

__attribute__((used)) static void FUNC1(struct device *dev, enum rpm_status status)
{
	FUNC0(dev);
	dev->power.runtime_status = status;
}