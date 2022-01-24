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
struct dev_pm_qos_request {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  enum dev_pm_qos_req_type { ____Placeholder_dev_pm_qos_req_type } dev_pm_qos_req_type ;

/* Variables and functions */
 int FUNC0 (struct device*,struct dev_pm_qos_request*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_pm_qos_mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct device *dev, struct dev_pm_qos_request *req,
			   enum dev_pm_qos_req_type type, s32 value)
{
	int ret;

	FUNC1(&dev_pm_qos_mtx);
	ret = FUNC0(dev, req, type, value);
	FUNC2(&dev_pm_qos_mtx);
	return ret;
}