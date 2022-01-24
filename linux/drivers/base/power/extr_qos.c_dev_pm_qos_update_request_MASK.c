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
struct dev_pm_qos_request {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FUNC0 (struct dev_pm_qos_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_pm_qos_mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct dev_pm_qos_request *req, s32 new_value)
{
	int ret;

	FUNC1(&dev_pm_qos_mtx);
	ret = FUNC0(req, new_value);
	FUNC2(&dev_pm_qos_mtx);
	return ret;
}