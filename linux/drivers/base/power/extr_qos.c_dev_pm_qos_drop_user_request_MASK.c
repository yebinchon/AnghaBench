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
struct device {int dummy; } ;
typedef  enum dev_pm_qos_req_type { ____Placeholder_dev_pm_qos_req_type } dev_pm_qos_req_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int) ; 
 int /*<<< orphan*/  dev_pm_qos_mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct device *dev,
					 enum dev_pm_qos_req_type type)
{
	FUNC1(&dev_pm_qos_mtx);
	FUNC0(dev, type);
	FUNC2(&dev_pm_qos_mtx);
}