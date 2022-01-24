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
struct device_driver {TYPE_1__* p; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC1(struct device_driver *drv, const char *buf,
			    size_t count)
{
	int rc;

	rc = FUNC0(&drv->p->kobj, buf, count);
	return rc ? rc : count;
}